---
title: Tiling (타일링)
type: concept
sources:
  - 03-flashattention-notes.md
---

# Tiling (타일링)

## 개요

입력을 작은 블록(타일)으로 쪼개 GPU의 빠른 메모리(SRAM) 안에서 계산을 완결짓는 기법. [[flashattention]]의 핵심 아이디어 중 하나. (출처: 03-flashattention-notes.md)

## 배경

- 표준 어텐션은 n×n 어텐션 행렬 전체를 느린 메모리(HBM)에 읽고 써야 한다. (출처: 03-flashattention-notes.md)
- Tiling은 큰 행렬을 HBM에 올리지 않고 블록 단위로 SRAM에서 처리해 HBM 접근 횟수를 줄인다. (출처: 03-flashattention-notes.md)

## 관련 개념

- [[flashattention]]: tiling을 핵심 기법으로 사용하는 알고리즘
- [[recomputation]]: tiling과 함께 FlashAttention의 메모리 절감을 완성하는 기법
