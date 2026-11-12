---
title: "[소스 요약] Longformer: 긴 문서를 위한 희소 어텐션 스터디 노트"
type: source
sources:
  - 02-longformer-sparse-attention-notes.md
---

# [소스 요약] Longformer: 긴 문서를 위한 희소 어텐션 스터디 노트

> 원본: `raw/02-longformer-sparse-attention-notes.md`  
> 원본 유형: 논문 스터디 노트 (실습용 요약)  
> 원본 작성일: 2026-03-09

## 한 줄 요약

모든 토큰 쌍을 보는 대신 일부 쌍만 계산하는 [[sparse-attention|희소 어텐션]]으로 긴 문서를 처리하는 방법. (출처: 02-longformer-sparse-attention-notes.md)

## 주요 내용

- [[sliding-window-attention]]: 각 토큰이 자기 주변 일정 범위의 토큰만 본다. (출처: 02-longformer-sparse-attention-notes.md)
- [[global-attention]]: 분류 토큰처럼 중요한 일부 토큰은 전체 시퀀스와 상호작용한다. (출처: 02-longformer-sparse-attention-notes.md)
- 두 방식을 혼합해 계산량이 시퀀스 길이에 거의 **O(n)** 으로 늘어나도록 설계. (출처: 02-longformer-sparse-attention-notes.md)
- 일부 토큰 쌍을 건너뛰므로 원래 full attention과 결과가 정확히 같지 않은 **근사적 접근**. (출처: 02-longformer-sparse-attention-notes.md)

## 장단점

- 장점: 긴 문서에서 메모리와 시간 절약. (출처: 02-longformer-sparse-attention-notes.md)
- 단점: 윈도우 밖 토큰과의 관계는 여러 층을 거쳐야 간접적으로 전달됨. 어떤 토큰을 global로 둘지 설계가 필요. (출처: 02-longformer-sparse-attention-notes.md)
