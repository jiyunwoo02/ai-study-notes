---
title: Multi-Head Attention
type: concept
sources:
  - 01-attention-is-all-you-need-notes.md
  - 04-kv-cache-blog-notes.md
---

# Multi-Head Attention

## 개요

[[self-attention]]을 여러 헤드로 나눠 병렬로 수행해 서로 다른 관계 패턴을 학습하는 메커니즘. (출처: 01-attention-is-all-you-need-notes.md)

## 구조

- Transformer base 모델 기준 **8개 헤드** 사용. (출처: 01-attention-is-all-you-need-notes.md)
- d_model=512 기준으로 각 헤드는 512/8=64 차원을 담당. (출처: 01-attention-is-all-you-need-notes.md)

## KV Cache와의 관계

- 헤드 수가 많을수록 [[kv-cache]] 크기가 커져 GPU 메모리 부담이 증가한다. (출처: 04-kv-cache-blog-notes.md)
- 이를 완화하기 위해 K/V 헤드 수를 줄인 [[mqa]], [[gqa]] 같은 변형이 쓰인다. (출처: 04-kv-cache-blog-notes.md)

## 관련 개념

- [[self-attention]]: multi-head attention의 기본 단위
- [[kv-cache]]: 추론 시 헤드 수에 비례해 메모리를 차지하는 캐시
- [[mqa]]: K/V 헤드를 하나로 줄인 변형
- [[gqa]]: K/V 헤드를 그룹으로 묶은 변형
