# 第 3 次 Learn go with tests 讀書會預習筆記

2023/11/08(三) 20:30
教材：[Iteration - learn-go-with-tests](https://quii.gitbook.io/learn-go-with-tests/go-fundamentals/iteration)
Discord 語音頻道: https://discord.com/channels/1119319218354135060/1157349998393049088

---

## 提問區

-
-

## 大綱及筆記

1. 用 for 關鍵字, 寫了 Repeat 函式功能, 又再次介紹了一次 TDD 的週期(感覺是讓閱讀的人熟悉)

```
TDD週期
(1) Write a test
(2) Make the compiler pass
(3) Run the test, see that it fails and check the error (4) message is meaningful
(5) Write enough code to make the test pass
(6) Refactor
```

2. 介紹 go test -bench 功能

- `go test -bench=.` is a go test benchmark feature
- example case:

```go
func BenchmarkRepeat(b *testing.B) {
	for i := 0; i < b.N; i++ {
		Repeat("a", 6)
	}
}

// cpu: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz
// BenchmarkRepeat-12       8243114               129.4 ns/op
// PASS
// ok      gotest/iteration        1.217s
```

output 意思是共花了 1.217 秒執行了 Repeat 函式共 8243114 次

3. 文章最下方練習建議從 go std 裡面找函式出來練習, 我找了 strings.Contains 來撰寫簡單測試, 並且把前面章節的 godoc 以及 -bench 功能都寫上

4. code 分享區的連結, 裡面以下 pkg

- Repeat
- Contains
- Leetcode98 valid binary search tree

## Code 分享區 （可貼 replit、 GitHub gist 等連結）

- [Repeat / Contains / LeetCode98 程式碼範例](https://replit.com/@yale918/LeetCode-Go-98-ValidateBinarySearchTree#main.go)

---

## 附註

- 使用 vscode 進行
- 此筆記版型參考 Jack Hung (Medium: Lung-Hsuan Hung )大大, 有經過本人同意, 並謝謝 Jack 大大不吝分享
