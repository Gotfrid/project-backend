FROM ghcr.io/astral-sh/uv:python3.12-bookworm-slim

COPY . .

RUN uv sync

CMD [ "uv", "run", "fastapi", "run"]
