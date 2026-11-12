---
title: Self-Attention
type: concept
sources:
  - 01-attention-is-all-you-need-notes.md
  - 02-longformer-sparse-attention-notes.md
  - 03-flashattention-notes.md
---

# Self-Attention

## 개요

한 시퀀스 안의 모든 토큰 쌍이 서로 얼마나 관련 있는지 계산해, 문맥을 반영한 표현을 만드는 메커니즘. (출처: 01-attention-is-all-you-need-notes.md)

## 특성

- 같은 시퀀스 내 모든 토큰 쌍을 비교하므로 시퀀스 길이 n에 대해 연산량과 메모리가 **O(n²)** 으로 늘어난다. (출처: 01-attention-is-all-you-need-notes.md)
- 어텐션 자체에는 순서 정보가 없어 [[positional-encoding]]을 별도로 더해야 한다. (출처: 01-attention-is-all-you-need-notes.md)
- RNN과 달리 시퀀스를 병렬로 처리할 수 있어 학습 속도 면에서 유리. (출처: 01-attention-is-all-you-need-notes.md)

## O(n²) 문제와 대안

- 모든 토큰 쌍을 비교하는 full self-attention은 O(n²) 복잡도로 긴 문서 처리에 불리하다. (출처: 01-attention-is-all-you-need-notes.md)
- 이를 해결하기 위해 일부 쌍만 계산하는 [[sparse-attention]] 방식이 제안됨. (출처: 02-longformer-sparse-attention-notes.md)
- 희소 어텐션은 근사적 접근으로, full attention과 결과가 정확히 같지는 않다. (출처: 02-longformer-sparse-attention-notes.md)

## 관련 개념

- [[multi-head-attention]]: self-attention을 여러 헤드로 병렬 수행하는 확장 방식
- [[positional-encoding]]: 순서 정보 부재를 보완하기 위한 위치 인코딩
- [[sparse-attention]]: O(n²) 한계를 극복하기 위해 일부 토큰 쌍만 계산하는 방식
- [[flashattention]]: 연산량은 O(n²)를 유지하되 GPU 메모리 접근 비용을 줄여 가속하는 방식
