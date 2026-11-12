---
title: Wiki Index
type: index
---

# LLM Wiki — Transformer 어텐션과 효율화

## 소스 페이지

| 파일 | 설명 |
|---|---|
| [[01-attention-is-all-you-need-notes]] | Attention Is All You Need 논문 스터디 노트 요약 |
| [[02-longformer-sparse-attention-notes]] | Longformer 희소 어텐션 논문 스터디 노트 요약 |
| [[03-flashattention-notes]] | FlashAttention IO-aware 어텐션 알고리즘 스터디 노트 요약 |
| [[04-kv-cache-blog-notes]] | LLM 추론 최적화 KV Cache 블로그 정리 요약 |
| [[05-study-group-meeting-notes]] | 어텐션 효율화 스터디 4주차 회의록 (미검증 구두 발언 포함, 충돌 2건) |

## 개념 페이지

| 개념 | 설명 |
|---|---|
| [[self-attention]] | 시퀀스 내 모든 토큰 쌍의 관계를 계산해 문맥 표현을 만드는 메커니즘 (O(n²)) |
| [[multi-head-attention]] | self-attention을 여러 헤드로 병렬 수행해 다양한 관계 패턴을 학습하는 메커니즘 |
| [[positional-encoding]] | 순서 정보가 없는 어텐션을 보완하기 위해 위치 정보를 임베딩에 더하는 방법 |
| [[sparse-attention]] | O(n²) 한계를 극복하기 위해 일부 토큰 쌍만 계산하는 근사 어텐션 방식 |
| [[sliding-window-attention]] | 각 토큰이 주변 일정 범위만 보는 희소 어텐션 패턴 |
| [[global-attention]] | 중요한 일부 토큰에만 전역 접근을 허용하는 희소 어텐션 패턴 |
| [[flashattention]] | GPU IO를 줄여 exact 어텐션을 가속하는 알고리즘 |
| [[tiling]] | 입력을 블록으로 쪼개 SRAM에서 계산을 완결하는 기법 |
| [[recomputation]] | 역전파 시 중간 행렬을 저장하지 않고 재계산해 메모리를 줄이는 기법 |
| [[kv-cache]] | 이전 토큰의 K/V 벡터를 저장해 autoregressive 생성 속도를 높이는 추론 최적화 기법 |
| [[mqa]] | K/V 헤드를 하나로 줄여 KV Cache 메모리를 절감하는 방식 |
| [[gqa]] | K/V 헤드를 그룹으로 묶어 KV Cache 메모리를 절감하는 방식 |
| [[transformer]] | Self-Attention 기반 시퀀스 변환 모델 (발표 연도 충돌 있음) |
