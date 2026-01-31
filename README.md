使用 XeLaTeX 编译：

```bash
xelatex NJUPT_Professional_Thesis_d1.tex   # 第1次编译
bibtex NJUPT_Professional_Thesis_d1        # 处理参考文献
xelatex NJUPT_Professional_Thesis_d1.tex   # 第2次编译
xelatex NJUPT_Professional_Thesis_d1.tex   # 第3次编译（解决交叉引用）
```
