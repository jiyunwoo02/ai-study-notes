---
title: Sparse Attention (희소 어텐션)
type: concept
sources:
  - 02-longformer-sparse-attention-notes.md
  - 03-flashattention-notes.md
---

# Sparse Attention (희소 어텐션)

## 개요

[[self-attention]]의 O(n²) 문제를 완화하기 위해, 모든 토큰 쌍이 아닌 **일부 쌍만 선택적으로 계산**하는 어텐션 방식. (출처: 02-longformer-sparse-attention-notes.md)

## 대표적 방식 (Longformer)

- **[[sliding-window-attention]]**: 각 토큰이 자기 주변 일정 범위의 토큰만 본다. (출처: 02-longformer-sparse-attention-notes.md)
- **[[global-attention]]**: 분류 토큰처럼 중요한 일부 토큰은 전체 시퀀스와 상호작용한다. (출처: 02-longformer-sparse-attention-notes.md)
- 두 방식을 혼합해 계산량이 시퀀스 길이에 거의 **O(n)** 으로 늘어나도록 설계. (출처: 02-longformer-sparse-attention-notes.md)

## 트레이드오프

- 장점: 긴 문서에서 메모리와 시간 절약. (출처: 02-longformer-sparse-attention-notes.md)
- 단점: full attention과 결과가 정확히 같지 않은 근사적 접근. 윈도우 밖 관계는 여러 층을 거쳐 간접 전달됨. (출처: 02-longformer-sparse-attention-notes.md)

## 관련 개념

- [[self-attention]]: O(n²) full attention — sparse attention이 대체하려는 대상
- [[sliding-window-attention]]: 지역 범위만 보는 희소 어텐션 패턴
- [[global-attention]]: 특정 토큰에 전역 접근을 허용하는 희소 어텐션 패턴
- [[flashattention]]: 근사하지 않고 exact attention을 계산하면서 IO를 줄이는 대안적 접근 (출처: 03-flashattention-notes.md)
