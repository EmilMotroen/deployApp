import pytest

uuid = 14

@pytest.fixture(scope='module')
def get_uuid():
    return uuid


