import {
  CLIPConfig,
  CLIPMode,
  DetectFaceResult,
  DetectTattoosResult
  IMachineLearningRepository,
  ModelConfig,
  ModelType,
  RecognitionConfig,
  TattoosRecognitionConfig,
  MediaMode,
  TextModelInput,
  VisionModelInput,
} from '@app/domain';
import { Injectable } from '@nestjs/common';
import { readFile } from 'node:fs/promises';

const errorPrefix = 'Machine learning request';

@Injectable()
export class MachineLearningRepository implements IMachineLearningRepository {
  private async predict<T>(url: string, input: TextModelInput | VisionModelInput, config: ModelConfig): Promise<T> {
    const formData = await this.getFormData(input, config);

    const res = await fetch(`${url}/predict`, { method: 'POST', body: formData }).catch((error: Error | any) => {
      throw new Error(`${errorPrefix} to "${url}" failed with ${error?.cause || error}`);
    });

    if (res.status >= 400) {
      const modelType = config.modelType ? ` for ${config.modelType.replace('-', ' ')}` : '';
      throw new Error(`${errorPrefix}${modelType} failed with status ${res.status}: ${res.statusText}`);
    }
    return res.json();
  }

  detectFaces(url: string, input: VisionModelInput, config: RecognitionConfig): Promise<DetectFaceResult[]> {
    return this.predict<DetectFaceResult[]>(url, input, { ...config, modelType: ModelType.FACIAL_RECOGNITION });
  }

  detectTattoos(url: string, input: VisionModelInput, config: TattoosRecognitionConfig): Promise<DetectTattoosResult[]> {
    return this.predict<DetectTattoosResult[]>(url, input, { ...config, modelType: ModelType.TATTOOS_RECOGNITION });
  }

  encodeImage(url: string, input: VisionModelInput, config: CLIPConfig): Promise<number[]> {
    return this.predict<number[]>(url, input, {
      ...config,
      modelType: ModelType.CLIP,
      mode: CLIPMode.VISION,
    } as CLIPConfig);
  }

  encodeText(url: string, input: TextModelInput, config: CLIPConfig): Promise<number[]> {
    return this.predict<number[]>(url, input, {
      ...config,
      modelType: ModelType.CLIP,
      mode: CLIPMode.TEXT,
    } as CLIPConfig);
  }

  async getFormData(input: TextModelInput | VisionModelInput, config: ModelConfig): Promise<FormData> {
    const formData = new FormData();
    const { enabled, modelName, modelType, ...options } = config;
    if (!enabled) {
      throw new Error(`${modelType} is not enabled`);
    }

    formData.append('modelName', modelName);
    if (modelType) {
      formData.append('modelType', modelType);
    }
    if (options) {
      formData.append('options', JSON.stringify(options));
    }
    if ('imagePath' in input) {
      formData.append('image', new Blob([await readFile(input.imagePath)]));
    } else if ('text' in input) {
      formData.append('text', input.text);
    } else {
      throw new Error('Invalid input');
    }

    return formData;
  }
}
