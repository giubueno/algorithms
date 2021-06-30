package linked_list_test

import (
	lists "basics/lists/linked"
	"testing"
)

func TestList_Add(t *testing.T) {
	list := lists.NewList()
	list.Add("A")
	if list.Size() != 1 {
		t.Fail()
	}
}

func TestList_Remove(t *testing.T) {
	// empty list
	list := lists.NewList()
	if list.Remove() == nil {
		t.Fail()
	}

	// one node in the list
	list.Add("A")
	if list.Remove() != nil {
		t.Fail()
	}
}

func TestList_Next(t *testing.T) {
	// empty list
	list := lists.NewList()
	if list.Next() == nil {
		t.Fail()
	}

	// list with one value
	list.Add("A")
	if list.Next() == nil {
		t.Fail()
	}

	// list with two values
	list.Add("B")
	if list.Prev() != nil {
		t.Fail()
	}
	if list.Next() != nil {
		t.Fail()
	}
}

func TestList_Prev(t *testing.T) {
	// empty list
	list := lists.NewList()
	if list.Prev() == nil {
		t.Fail()
	}

	// with one value
	list.Add("A")
	if list.Prev() == nil {
		t.Fail()
	}

	// with two values
	list.Add("B")
	if list.Prev() != nil {
		t.Fail()
	}
}

func TestList_Current(t *testing.T) {
	// empty list
	list := lists.NewList()
	err, _ := list.Current()
	if err == nil {
		t.Fail()
	}

	// with one value
	expectedVal := "A"
	list.Add(expectedVal)
	_, val := list.Current()
	if val != expectedVal {
		t.Fail()
	}
}
