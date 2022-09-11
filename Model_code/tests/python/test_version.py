import setup.py

def test_version():
    assert setup.py.__version__, "version not found"
