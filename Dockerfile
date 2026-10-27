#NAME: CiscoData
#start python:3.14
FROM python:3.14

# Copy uv binary from the official uv image (multi-stage build pattern)
COPY --from=ghcr.io/astral-sh/uv:latest /uv /bin/

WORKDIR /CiscoData

# Add uv to Path to install uv packages
ENV PATH="/CiscoData/.env/bin:$PATH"

# Copy dependency files first (better layer caching)
COPY "pyproject.toml" "uv.lock" ".python-version" ./

COPY Datasets/ /CiscoData/Datasets

ENTRYPOINT ["python"]
