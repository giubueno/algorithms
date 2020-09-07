import unittest
from mergeLists import mergeLists

class TestLongest(unittest.TestCase):
    def test_1(self):
        actual = mergeLists([], [])
        expected = []
        self.assertEqual(actual, expected)

    def test_2(self):
        actual = mergeLists([1, 3], [2])
        expected = [1, 2, 3]
        self.assertEqual(actual, expected)

if __name__ == '__main__':
    unittest.main()