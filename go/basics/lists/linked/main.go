package linked_list

import "fmt"

// value is the type used to define a node value. This can
// be anything.
type value interface{}

// node is a specific node of the list. Each node points to the next
// and to the previous node.
type node struct {
	val  value
	prev *node
	next *node
}

// list is an instance of a list.
type list struct {
	head    *node
	current *node
	size    int
}

// NewList creates a new empty list.
func NewList() *list {
	return &list{}
}

// Size is current amount of values in the list.
func (l *list) Size() int {
	return l.size
}

// Add a new value to the list as a new node at the end of the list.
func (l *list) Add(val value) {
	node := &node{val: val, prev: l.current}
	if l.current != nil {
		l.current.next = node
	}
	l.current = node
	l.size++
}

// Remove the current node of the list.
func (l *list) Remove() error {
	if l.current == nil {
		return fmt.Errorf("no current node")
	}

	if l.current.prev != nil {
		l.current.prev.next = l.current.next
	}
	if l.current.next != nil {
		l.current.next.prev = l.current.prev
	}
	l.current = l.current.prev

	return nil
}

func (l *list) Next() error {
	if l.size == 0 {
		return fmt.Errorf("the list is empty")
	}
	if l.current == nil {
		return fmt.Errorf("there is no current value")
	}

	if l.current.next == nil {
		return fmt.Errorf("there is no next value")
	}

	l.current = l.current.next

	return nil
}

func (l *list) Prev() error {
	if l.size == 0 {
		return fmt.Errorf("the list is empty")
	}
	if l.current == nil {
		return fmt.Errorf("there is no current value")
	}

	if l.current.prev == nil {
		return fmt.Errorf("there is no next value")
	}

	l.current = l.current.prev

	return nil
}

func (l *list) Current() (error, value) {
	if l.size == 0 {
		return fmt.Errorf("the list is empty"), nil
	}
	if l.current == nil {
		return fmt.Errorf("there is no current value"), nil
	}
	return nil, l.current.val
}
