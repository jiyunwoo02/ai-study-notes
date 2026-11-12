---
title: Positional Encoding
type: concept
sources:
  - 01-attention-is-all-you-need-notes.md
---

# Positional Encoding

## 개요

[[self-attention]] 자체는 순서 정보가 없어, 위치 정보를 별도로 입력 임베딩에 더해주는 방법. (출처: 01-attention-is-all-you-need-notes.md)

## 배경

- 어텐션 메커니즘은 토큰의 순서를 고려하지 않고 모든 쌍을 동등하게 비교한다. (출처: 01-attention-is-all-you-need-notes.md)
- 이를 보완하기 위해 각 토큰의 위치 정보를 임베딩에 추가한다. (출처: 01-attention-is-all-you-need-notes.md)

## 관련 개념

- [[self-attention]]: 순서 정보가 없어 positional encoding이 필요한 메커니즘
