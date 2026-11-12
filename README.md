# AI Study Notes

LLM Agent와 LLM Wiki 패턴을 직접 구현해보는 학습 레포.

```
side-project/
├── agent-learning/      # Tool Calling · MCP · ReAct Agent 구현 (Python)
└── llm-wiki-practice/   # LLM Wiki 실습 키트 (Transformer 어텐션 주제)
```

---

## agent-learning

**Tool Calling → MCP Server → ReAct Agent** 순서로 LLM Agent 패턴을 단계별로 구현.

- Siemens SDC LLM Gateway + AI Hub ML API 사용
- 각 단계별 독립 실행 가능한 스크립트 구성

```bash
cd agent-learning
source .venv/bin/activate
python 01_tool_calling/basic.py      # 1단계: Tool Calling
python 02_mcp_server/test_client.py  # 2단계: MCP
python 03_agent/react_agent.py       # 3단계: ReAct Agent
```

→ 상세 가이드: `agent-learning/README.md`

---

## llm-wiki-practice

Karpathy의 LLM Wiki 패턴 체험 키트. 주제는 Transformer 어텐션과 효율화.

LLM이 raw/의 자료를 읽고 wiki/의 마크다운 위키를 직접 생성·관리하는 과정을 관찰한다.

schema.md 읽기 → raw/ 파일 01~05 순서대로 ingest → query → lint

- 각 ingest마다 개념 페이지가 어떻게 갱신·연결되는지 관찰하는 것이 핵심
- 충돌 발생 시 ⚠️ 섹션으로 표시, 임의 판정 없이 양측 근거 병기

→ 상세 가이드: `llm-wiki-practice/CLAUDE.md`
