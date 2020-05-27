import unittest
from Quicksort import sortArray

class TestStringMethods(unittest.TestCase):
    def test_quicksort_simple(self):
        self.assertListEqual(sortArray([1,3,5,0]), [0,1,3,5])

    def test_quicksort_repeation(self):
        self.assertListEqual(sortArray([0,3,5,0]), [0,0,3,5])

    def test_quicksort_sorted(self):
        self.assertListEqual(sortArray([0,1,2,3,4]), [0,1,2,3,4])

    def test_quicksort_reverse(self):
        self.assertListEqual(sortArray([4,3,2,1,0]), [0,1,2,3,4])

    def test_quicksort_bin(self):
        self.assertListEqual(sortArray([1,0,0,1,1]), [0,0,1,1,1])

if __name__ == '__main__':
    unittest.main()
