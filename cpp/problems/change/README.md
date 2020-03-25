# Change Problem

The change-making problem addresses the question of finding the minimum number of coins (of certain denominations) that add up to a given amount of money. It is a special case of the integer knapsack problem, and has applications wider than just currency.

It is also the most common variation of the coin change problem, a general case of partition in which, given the available denominations of an infinite set of coins, the objective is to find out the number of possible ways of making a change for a specific amount of money, without considering the order of the coins.

It is weakly NP-hard, but may be solved optimally in pseudo-polynomial time by dynamic programming.

## Mathematical definition

Coin values can be modeled by a set of n distinct positive integer values (whole numbers), arranged in increasing order as w1 through wn. The problem is: given an amount W, also a positive integer, to find a set of non-negative (positive or zero) integers {x1, x2, ..., xn}, with each xj representing how often the coin with value wj is used, which minimize the total number of coins f(W).

## Running

You can run this code using make as follow.

```bash
make test
```
