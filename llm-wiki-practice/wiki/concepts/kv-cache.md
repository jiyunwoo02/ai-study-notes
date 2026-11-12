---
title: KV Cache
type: concept
sources:
  - 04-kv-cache-blog-notes.md
  - 05-study-group-meeting-notes.md
---

# KV Cache

## 개요

LLM의 autoregressive 생성 시, 이전 토큰들의 Key와 Value 벡터를 메모리에 저장해두고 재사용하는 추론 최적화 기법. (출처: 04-kv-cache-blog-notes.md)

## 동작 방식

- LLM은 토큰을 하나씩 생성할 때마다 이전 토큰 전체의 Key/Value를 참조해야 한다. (출처: 04-kv-cache-blog-notes.md)
- KV Cache 없이는 매 단계마다 이전 토큰의 Key/Value를 다시 계산 — 낭비가 크다. (출처: 04-kv-cache-blog-notes.md)
- KV Cache를 사용하면 새 토큰의 Query만 새로 계산하고, 나머지는 캐시에서 읽어 재사용한다. (출처: 04-kv-cache-blog-notes.md)

## 트레이드오프

- **속도**: 같은 계산 반복을 없애 생성 속도가 크게 빨라진다. (출처: 04-kv-cache-blog-notes.md)
- **메모리**: 캐시 크기가 시퀀스 길이, 층 수, 헤드 수, 배치 크기에 비례해 커진다. (출처: 04-kv-cache-blog-notes.md)
- 긴 컨텍스트나 많은 동시 요청에서 GPU 메모리 병목이 된다. (출처: 04-kv-cache-blog-notes.md)

## KV Cache 메모리 절감 방법

K/V 헤드 수를 줄여 캐시 크기를 줄이는 방식들이 쓰인다. (출처: 04-kv-cache-blog-notes.md)

- [[mqa]](Multi-Query Attention): 자료에 없음 (키워드만 언급됨)
- [[gqa]](Grouped-Query Attention): 자료에 없음 (키워드만 언급됨)

## 스터디 그룹 확인 사항

- 추론 시 KV Cache가 속도는 올려주지만 메모리를 많이 쓴다는 점을 스터디 그룹에서도 확인. (출처: 05-study-group-meeting-notes.md)
- 서비스에서 동시 요청이 많을수록 캐시 메모리가 병목이 된다는 의견 — 04번 내용과 일치. (출처: 05-study-group-meeting-notes.md)

## 관련 개념

- [[self-attention]]: KV Cache가 적용되는 어텐션 메커니즘
- [[multi-head-attention]]: 헤드 수가 KV Cache 크기에 직접 영향을 줌
- [[mqa]]: K/V 헤드를 하나로 줄여 캐시를 절감하는 방식
- [[gqa]]: K/V 헤드를 그룹으로 묶어 캐시를 절감하는 방식
