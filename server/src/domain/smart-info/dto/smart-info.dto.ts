import { ApiProperty } from '@nestjs/swagger';
import { ValidateUUID } from '../../domain.util';
import { Type } from 'class-transformer';
import { IsArray, ValidateNested } from 'class-validator';

export class TattoosRecognitionResponseDto {
    @ValidateUUID()
    id!: string;
    @IsArray()
    @ValidateNested({ each: true })
    @Type(() => TattoosRecognizeItem)
    data!: TattoosRecognizeItem[];
  }

export class TattoosRecognizeItem {
    @ApiProperty({ type: 'string', description: 'base-64 encoded image' })
    image!: string;
    @ApiProperty({ type: 'number' })
    score!: number;
    @ApiProperty({ type: 'string' })
    prompt!: string;
}