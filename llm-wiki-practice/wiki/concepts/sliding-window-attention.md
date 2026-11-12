---
title: Sliding Window Attention
type: concept
sources:
  - 02-longformer-sparse-attention-notes.md
---

# Sliding Window Attention

## 개요

각 토큰이 자기 주변 일정 범위(윈도우) 안의 토큰만 보는 [[sparse-attention]] 패턴. (출처: 02-longformer-sparse-attention-notes.md)

## 특성

- 전체 시퀀스가 아닌 지역 문맥만 참조하므로 계산량이 줄어든다. (출처: 02-longformer-sparse-attention-notes.md)
- 윈도우 밖 토큰과의 관계는 여러 층을 거쳐야 간접적으로 전달됨. (출처: 02-longformer-sparse-attention-notes.md)

## 관련 개념

- [[sparse-attention]]: sliding window attention이 속하는 상위 범주
- [[global-attention]]: 전역 접근이 필요한 토큰을 위해 sliding window와 혼합 사용
