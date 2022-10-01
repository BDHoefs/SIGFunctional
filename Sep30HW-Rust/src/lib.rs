pub fn sum(xs: Vec<i32>) -> i32 {
    xs.into_iter().fold(0, |acc, x| acc + x)
}

pub fn product(xs: Vec<i32>) -> i32 {
    xs.into_iter().fold(1, |acc, x| acc * x)
}

pub fn and(bs: Vec<bool>) -> bool {
    bs.into_iter().fold(true, |acc, b| b == acc)
}

pub fn or(bs: Vec<bool>) -> bool {
    bs.into_iter().fold(false, |acc, b| b | acc)
}

#[test]
fn sum_test() {
    assert_eq!(sum(vec![1, 2, 3, 4]), 10);
}

#[test]
fn product_test() {
    assert_eq!(product(vec![1, 2, 3, 4]), 24);
}

#[test]
fn and_test() {
    assert_eq!(and(vec![true, true, true]), true);
    assert_eq!(and(vec![true, false, true]), false);
    assert_eq!(and(vec![false, false, false]), false);
}

#[test]
fn or_test() {
    assert_eq!(or(vec![true, true, true]), true);
    assert_eq!(or(vec![true, false, false]), true);
    assert_eq!(or(vec![false, false, false]), false);
}
