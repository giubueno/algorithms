import unittest
from subString import lengthOfLongestSubstring

class TestLongest(unittest.TestCase):    
    def test_1(self):
        actual = lengthOfLongestSubstring("abcabcbb")
        expected = 3
        self.assertEqual(actual, expected)
    
    def test_2(self):
        actual = lengthOfLongestSubstring(" ")
        expected = 1
        self.assertEqual(actual, expected)

    def test_3(self):
        actual = lengthOfLongestSubstring("au")
        expected = 2
        self.assertEqual(actual, expected)

    def test_4(self):
        actual = lengthOfLongestSubstring("pwwkew")
        expected = 3
        self.assertEqual(actual, expected)

    def test_5(self):
        actual = lengthOfLongestSubstring("aab")
        expected = 2
        self.assertEqual(actual, expected)

    def test_6(self):
        actual = lengthOfLongestSubstring("abba")
        expected = 2
        self.assertEqual(actual, expected)

if __name__ == '__main__':
    unittest.main()