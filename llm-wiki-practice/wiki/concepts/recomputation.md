---
title: Recomputation (재계산)
type: concept
sources:
  - 03-flashattention-notes.md
---

# Recomputation (재계산)

## 개요

역전파(backpropagation) 시 큰 중간 행렬을 메모리에 저장해두지 않고, 필요할 때 다시 계산해 메모리 사용을 줄이는 기법. [[flashattention]]의 핵심 아이디어 중 하나. (출처: 03-flashattention-notes.md)

## 배경

- 표준 어텐션 역전파는 n×n 어텐션 행렬을 저장해야 한다. (출처: 03-flashattention-notes.md)
- Recomputation은 이 행렬을 저장하지 않고 역전파 시점에 재계산해 메모리 절감. (출처: 03-flashattention-notes.md)

## 관련 개념

- [[flashattention]]: recomputation을 핵심 기법으로 사용하는 알고리즘
- [[tiling]]: recomputation과 함께 FlashAttention의 메모리 절감을 완성하는 기법
