from app import app


def test_home():
    response = app.test_client().get('/')
    assert b'Welcome to "Implement CI/CD using Jenkins for python application"' in response.data
    assert response.status_code == 200
