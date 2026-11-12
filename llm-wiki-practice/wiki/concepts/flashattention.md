---
title: FlashAttention
type: concept
sources:
  - 03-flashattention-notes.md
  - 05-study-group-meeting-notes.md
---

# FlashAttention

## 개요

GPU 메모리 접근(IO)을 최소화해 [[self-attention]]을 더 빠르고 메모리 효율적으로 계산하는 알고리즘. 근사가 아닌 **정확한(exact) 어텐션**을 계산한다. (출처: 03-flashattention-notes.md)

## 핵심 아이디어

- **[[tiling]]**: 입력을 작은 블록으로 쪼개 GPU의 빠른 메모리(SRAM) 안에서 계산을 끝낸다. (출처: 03-flashattention-notes.md)
- **[[recomputation]]**: 역전파 때 n×n 중간 행렬을 저장하지 않고 필요할 때 다시 계산해 메모리를 아낀다. (출처: 03-flashattention-notes.md)

## 성능 특성

- 연산량 자체는 여전히 **O(n²)**. 줄어든 것은 메모리 접근(HBM 읽기/쓰기) 비용. (출처: 03-flashattention-notes.md)
- 추가 메모리 사용량은 시퀀스 길이에 **선형**으로 증가. (출처: 03-flashattention-notes.md)

## Sparse Attention과의 비교

| 항목 | FlashAttention | [[sparse-attention]] (Longformer 등) |
|---|---|---|
| 정확도 | Exact (정확) | 근사 |
| 연산량 | O(n²) | O(n) 수준 |
| 개선 대상 | 메모리 접근 비용 | 연산량 자체 |

(출처: 03-flashattention-notes.md)

## ⚠️ 충돌: 근사 여부 및 연산 복잡도

| 주장 | 출처 | 신뢰도 |
|---|---|---|
| **Exact(정확)** 어텐션, 연산량 **O(n²)** 유지, 줄어든 것은 메모리 접근 비용 | 03-flashattention-notes.md (논문 스터디 노트) | 높음 |
| **근사** 어텐션, 계산량을 **O(n)으로 줄인** 방법 | 05-study-group-meeting-notes.md (회의록, 구두 발언·미검증) | 낮음 |

어느 쪽이 맞는지 임의로 정하지 않음. 05번 자료는 구두 발언 기록이며, 해당 참석자도 불확실하다고 했고 논문 재확인을 액션 아이템으로 남긴 상태.

## 관련 개념

- [[self-attention]]: FlashAttention이 가속하는 대상
- [[tiling]]: SRAM 내에서 블록 단위로 계산하는 기법
- [[recomputation]]: 중간 행렬 저장 대신 역전파 시 재계산하는 기법
- [[sparse-attention]]: 근사 방식의 대안 (FlashAttention과 대조)
