FROM ghcr.io/astral-sh/uv:python3.12-bookworm-slim

RUN apt-get update && apt-get install -y --no-install-recommends curl

COPY . .

RUN uv sync

CMD [ "uv", "run", "fastapi", "run"]
