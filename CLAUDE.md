# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## 워크스페이스 구성

이 디렉터리는 두 개의 독립적인 학습 프로젝트를 포함합니다.

```
side-project/
├── agent-learning/      # Tool Calling · MCP · ReAct Agent 구현 (Python)
├── llm-wiki/            # LLM Wiki 패턴 구현체 (마크다운 위키)
└── llm-wiki-practice/   # LLM Wiki 실습 키트 (Transformer 어텐션 주제)
```

각 프로젝트에 별도 CLAUDE.md가 있으므로, 해당 프로젝트 작업 시 그 파일을 먼저 확인하세요.

---

## agent-learning

Python 기반 LLM Agent 학습 프로젝트. Siemens SDC LLM Gateway + AI Hub ML API 사용.  
→ 상세 가이드: `agent-learning/CLAUDE.md`

```bash
cd agent-learning
source .venv/bin/activate
python 01_tool_calling/basic.py
```

## llm-wiki / llm-wiki-practice

Karpathy의 LLM Wiki 패턴 — LLM이 직접 마크다운 위키를 생성·관리하는 지식 베이스.

- `llm-wiki/`: 실제 구현 환경. → 상세 가이드: `llm-wiki/CLAUDE.md`
- `llm-wiki-practice/`: Transformer 어텐션 주제로 패턴을 체험하는 실습 키트.  
  `schema.md` 읽기 → `raw/` 파일 01~05 순서대로 ingest → query → lint 순으로 진행.
