import pytest
from fastapi.testclient import TestClient


from src.app import app


@pytest.fixture()
def client():
    return TestClient(app)


def test_index(client):
    response = client.get("/")
    assert response.status_code == 200
    assert response.json() == "Hello from Fastapi"
