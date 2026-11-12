---
title: Global Attention
type: concept
sources:
  - 02-longformer-sparse-attention-notes.md
---

# Global Attention

## 개요

분류 토큰처럼 중요한 일부 토큰에 한해 전체 시퀀스와 상호작용을 허용하는 [[sparse-attention]] 패턴. (출처: 02-longformer-sparse-attention-notes.md)

## 특성

- 모든 토큰이 아닌 선택된 소수의 토큰만 전역 접근을 가진다. (출처: 02-longformer-sparse-attention-notes.md)
- 어떤 토큰을 global로 지정할지는 태스크에 따라 설계가 필요하다. (출처: 02-longformer-sparse-attention-notes.md)
- [[sliding-window-attention]]과 혼합해 O(n)에 가까운 복잡도를 달성. (출처: 02-longformer-sparse-attention-notes.md)

## 관련 개념

- [[sparse-attention]]: global attention이 속하는 상위 범주
- [[sliding-window-attention]]: 지역 범위만 보는 패턴, global attention과 혼합 사용
