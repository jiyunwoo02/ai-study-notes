---
title: Transformer
type: concept
sources:
  - 01-attention-is-all-you-need-notes.md
  - 05-study-group-meeting-notes.md
---

# Transformer

## 개요

RNN/CNN 없이 [[self-attention]]만으로 시퀀스 변환을 수행하는 모델 구조. (출처: 01-attention-is-all-you-need-notes.md)

## 구조 (base 모델)

- 인코더-디코더 구조. (출처: 01-attention-is-all-you-need-notes.md)
- 인코더/디코더 각각 6개 층, d_model=512, [[multi-head-attention]] 8개 헤드 사용. (출처: 01-attention-is-all-you-need-notes.md)
- [[positional-encoding]]으로 위치 정보를 보완. (출처: 01-attention-is-all-you-need-notes.md)
- RNN과 달리 시퀀스를 병렬로 처리할 수 있어 학습 속도 면에서 유리. (출처: 01-attention-is-all-you-need-notes.md)

## ⚠️ 충돌: 발표 연도

| 주장 | 출처 | 신뢰도 |
|---|---|---|
| **2017년** Google 연구진 발표 | 01-attention-is-all-you-need-notes.md (논문 스터디 노트) | 높음 |
| **2018년** Google 발표 | 05-study-group-meeting-notes.md (회의록, 구두 발언·미검증) | 낮음 |

어느 쪽이 맞는지 임의로 정하지 않음. 05번 자료는 구두 발언 기록으로 검증되지 않은 출처임에 유의.

## 관련 개념

- [[self-attention]]: Transformer의 핵심 메커니즘
- [[multi-head-attention]]: Transformer가 사용하는 어텐션 구조
- [[positional-encoding]]: 순서 정보를 보완하는 방법
