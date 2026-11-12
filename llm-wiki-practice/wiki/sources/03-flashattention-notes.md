---
title: "[소스 요약] FlashAttention: IO를 고려한 정확한 어텐션 스터디 노트"
type: source
sources:
  - 03-flashattention-notes.md
---

# [소스 요약] FlashAttention: IO를 고려한 정확한 어텐션 스터디 노트

> 원본: `raw/03-flashattention-notes.md`  
> 원본 유형: 논문 스터디 노트 (실습용 요약)  
> 원본 작성일: 2026-03-16

## 한 줄 요약

어텐션 결과를 근사하지 않고 정확히 계산하면서, GPU 메모리 접근(IO)을 줄여 더 빠르고 메모리를 덜 쓰는 알고리즘. (출처: 03-flashattention-notes.md)

## 문제의식

- 표준 어텐션의 병목은 연산 자체보다 GPU의 느린 메모리([[hbm-sram|HBM]])와 빠른 메모리(SRAM) 사이의 데이터 이동. (출처: 03-flashattention-notes.md)
- n×n 크기의 어텐션 행렬을 HBM에 읽고 쓰는 비용이 크다. (출처: 03-flashattention-notes.md)

## 핵심 아이디어

- **[[tiling]]**: 입력을 작은 블록으로 쪼개 SRAM 안에서 계산을 끝낸다. (출처: 03-flashattention-notes.md)
- **[[recomputation]]**: 역전파 때 큰 중간 행렬을 저장하지 않고 필요할 때 다시 계산한다. (출처: 03-flashattention-notes.md)
- 결과: HBM 읽기/쓰기 횟수가 줄고, 어텐션의 추가 메모리 사용량이 시퀀스 길이에 **선형**으로 증가. (출처: 03-flashattention-notes.md)

## 중요한 포인트

- **정확한(exact) 어텐션**이다. Longformer 같은 [[sparse-attention|근사 방식]]과 다르다. (출처: 03-flashattention-notes.md)
- 연산량 자체는 여전히 O(n²)이다. 줄어든 것은 메모리 접근 비용이다. (출처: 03-flashattention-notes.md)
