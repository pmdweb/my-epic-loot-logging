from fastapi import FastAPI

app = FastAPI(title="Logging Service")

@app.get("/health")
def health():
    """Simple health endpoint."""
    return {"status": "ok"}
