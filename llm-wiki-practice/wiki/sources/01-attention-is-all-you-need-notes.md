---
title: "[소스 요약] Attention Is All You Need 스터디 노트"
type: source
sources:
  - 01-attention-is-all-you-need-notes.md
---

# [소스 요약] Attention Is All You Need 스터디 노트

> 원본: `raw/01-attention-is-all-you-need-notes.md`  
> 원본 유형: 논문 스터디 노트 (실습용 요약)  
> 원본 작성일: 2026-03-02

## 한 줄 요약

RNN/CNN 없이 어텐션만으로 시퀀스 변환 모델을 만든 Transformer 구조를 제안한 논문. (출처: 01-attention-is-all-you-need-notes.md)

## 주요 내용

- 2017년 Google 연구진이 발표한 논문. (출처: 01-attention-is-all-you-need-notes.md)
- 인코더-디코더 구조이며, base 모델 기준 인코더/디코더 각각 6개 층, d_model=512, 8개 헤드 사용. (출처: 01-attention-is-all-you-need-notes.md)
- [[self-attention]]: 한 시퀀스 안의 모든 토큰 쌍이 서로 얼마나 관련 있는지 계산해 문맥을 반영한 표현을 만든다. (출처: 01-attention-is-all-you-need-notes.md)
- [[multi-head-attention]]: 어텐션을 여러 헤드로 나눠 병렬로 수행해 서로 다른 관계 패턴을 학습. (출처: 01-attention-is-all-you-need-notes.md)
- [[positional-encoding]]: 어텐션 자체는 순서 정보가 없어서 위치 정보를 따로 더해준다. (출처: 01-attention-is-all-you-need-notes.md)
- RNN과 달리 시퀀스를 병렬로 처리할 수 있어 학습 속도 면에서 유리. (출처: 01-attention-is-all-you-need-notes.md)

## 한계

- 모든 토큰 쌍을 비교하므로 시퀀스 길이 n에 대해 연산량과 메모리가 **O(n²)** 으로 늘어난다. (출처: 01-attention-is-all-you-need-notes.md)
- 긴 문서를 다루기 어렵다는 문제가 이후 연구들의 출발점이 됨. (출처: 01-attention-is-all-you-need-notes.md)
