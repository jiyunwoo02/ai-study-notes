# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## 이 실습의 목적

LLM Wiki 패턴 체험 키트. 주제는 **Transformer 어텐션과 효율화**.  
`raw/`의 파일 5개를 순서대로 `wiki/`에 반영하면서 LLM이 지식을 누적·연결·검증하는 과정을 관찰한다.

## 실습 진행 방법

**schema.md를 먼저 읽고 규칙을 숙지한 뒤 시작한다.**

```
Step 1. schema.md 읽기
Step 2. raw/ 파일을 01 → 02 → 03 → 04 → 05 순서로 하나씩 ingest
Step 3. 질문하기 (위키만 참고해서 답하기)
Step 4. lint — 모순·고아 페이지·출처 없는 주장 탐지
Step 5. ANSWER_KEY.md 확인
```

한꺼번에 넣지 않는다. **하나 넣을 때마다 wiki/가 어떻게 바뀌는지 관찰하는 것이 핵심.**

## ingest 시 반드시 지킬 것 (schema.md 요약)

- `raw/` 파일은 **절대 수정하지 않는다.**
- 모든 위키 페이지는 **한국어**로 작성한다.
- 모든 주장에 `(출처: 01-xxx.md)` 형식으로 근거 파일을 명시한다.
- 확인되지 않은 내용은 지어내지 않고 "자료에 없음"이라고 적는다.
- 기존 내용과 충돌 시 `⚠️ 충돌` 섹션으로 표시 — 임의로 어느 쪽이 맞다고 정하지 않는다.

## wiki/ 구조

| 경로 | 역할 |
|---|---|
| `wiki/index.md` | 전체 목차 + 한 줄 설명 (ingest마다 갱신) |
| `wiki/log.md` | 어떤 자료를 언제 반영했는지 기록 (ingest마다 갱신) |
| `wiki/sources/` | raw 파일별 요약 페이지 |
| `wiki/concepts/` | 개념별 페이지 (self-attention, kv-cache 등) |

## 관찰 포인트

- 02·03번 ingest 시 `self-attention` 페이지가 새로 생성되지 않고 **갱신**되는가?
- 05번 ingest 시 기존 내용과 충돌을 **표시**하는가, 아니면 조용히 덮어쓰는가?
- 모든 주장에 출처가 붙어 있는가?

> ANSWER_KEY.md에 스포일러가 있으니 실습 완료 전에는 열지 않는다.
