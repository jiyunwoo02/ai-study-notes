---
title: "[소스 요약] LLM 추론 속도를 좌우하는 KV Cache 블로그 정리"
type: source
sources:
  - 04-kv-cache-blog-notes.md
---

# [소스 요약] LLM 추론 속도를 좌우하는 KV Cache 블로그 정리

> 원본: `raw/04-kv-cache-blog-notes.md`  
> 원본 유형: 기술 블로그 정리 노트 (실습용 요약)  
> 원본 작성일: 2026-03-23

## 문제 상황

LLM은 토큰을 하나씩 생성(autoregressive)한다. 매 단계마다 이전 토큰들의 Key/Value를 다시 계산하면 낭비가 크다. (출처: 04-kv-cache-blog-notes.md)

## KV Cache란?

이전 토큰들의 Key와 Value 벡터를 저장해두고, 새 토큰 생성 시 새 토큰의 Query만 새로 계산해 재사용하는 기법. 같은 계산을 반복하지 않아 생성 속도가 크게 빨라진다. (출처: 04-kv-cache-blog-notes.md)

## 트레이드오프

- 캐시 크기는 시퀀스 길이, 층 수, 헤드 수, 배치 크기에 비례해 커진다. (출처: 04-kv-cache-blog-notes.md)
- 긴 컨텍스트나 많은 동시 요청에서 GPU 메모리를 많이 차지해 서비스 처리량의 병목이 된다. (출처: 04-kv-cache-blog-notes.md)
- 이를 줄이기 위해 [[mqa|Multi-Query Attention(MQA)]], [[gqa|Grouped-Query Attention(GQA)]]처럼 K/V 헤드 수를 줄이는 방식이 쓰인다. (출처: 04-kv-cache-blog-notes.md)
