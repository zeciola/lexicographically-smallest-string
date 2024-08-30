from main import get_small_string

import pytest


test_data = (
    ("bbcad", "aabad"),
    ("hackerrank", "gackerrank"),
    ("aaaa", "aaaa"),
    ("bbccddacc", "aabbccacc"),
)


@pytest.mark.parametrize("_input,expected", test_data)
def test_get_small_strings(_input, expected):
    result = get_small_string(s=_input)
    assert result == expected
