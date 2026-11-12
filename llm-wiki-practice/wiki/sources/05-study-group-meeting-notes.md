---
title: "[소스 요약] 어텐션 효율화 스터디 4주차 회의록"
type: source
sources:
  - 05-study-group-meeting-notes.md
---

# [소스 요약] 어텐션 효율화 스터디 4주차 회의록

> 원본: `raw/05-study-group-meeting-notes.md`  
> 원본 유형: 스터디 회의록 (참석자 구두 발언 위주, **검증 안 됨**)  
> 원본 작성일: 2026-03-30

⚠️ 이 자료는 구두 발언 기록으로, 사실 오류가 포함될 수 있음.

## 논의 내용

### Transformer 배경
- Transformer는 **2018년**에 Google이 발표한 논문에서 시작되었다고 정리함. (출처: 05-study-group-meeting-notes.md)
- → **기존 위키(01번)와 충돌**: 01번은 **2017년** 발표로 기록. [[transformer]] 페이지 참고.

### FlashAttention 논의
- 한 참석자: "FlashAttention은 어텐션을 **근사**해서 계산량을 **O(n)으로 줄인** 방법이라고 알고 있다." (출처: 05-study-group-meeting-notes.md)
- 다른 참석자는 확실하지 않다고 했고, 다음 주에 논문을 다시 확인하기로 함. (출처: 05-study-group-meeting-notes.md)
- → **기존 위키(03번)와 충돌**: 03번은 FlashAttention이 **exact(정확)** 어텐션이며 연산량은 여전히 **O(n²)** 라고 기록. [[flashattention]] 페이지 참고.

### KV Cache 논의
- 추론 시 KV Cache가 속도는 올려주지만 메모리를 많이 쓴다는 점을 확인. (출처: 05-study-group-meeting-notes.md)
- 서비스에서 동시 요청이 많을수록 캐시 메모리가 문제라는 의견. (출처: 05-study-group-meeting-notes.md)

## 액션 아이템

- FlashAttention 논문 재확인 (담당: 민수) — 위의 충돌 해소 필요 (출처: 05-study-group-meeting-notes.md)
- GQA 관련 자료 조사 (담당: 지은) — 현재 위키에 상세 내용 없음 (출처: 05-study-group-meeting-notes.md)
