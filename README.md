使用 XeLaTeX 编译：

```bash
xelatex NJUPT_Professional_Thesis_d1.tex   # 第1次编译
bibtex NJUPT_Professional_Thesis_d1        # 处理参考文献
xelatex NJUPT_Professional_Thesis_d1.tex   # 第2次编译
xelatex NJUPT_Professional_Thesis_d1.tex   # 第3次编译（解决交叉引用）
```

BibTeX 参考文献处理流程：LaTeX->BibTeX->LaTeX->LaTeX

```plain
main.tex + mybib.bib
   ↓
第一轮 LaTeX -> 读取 main.tex -> 更新 main.aux（写入cite/样式/库信息）
   ↓
第二轮 BibTeX -> 读取main.aux+mybib.bib -> 生成 main.bbl+main.blg
   ↓
第三轮 LaTeX -> 读取 main.tex+main.bbl -> 生成参考文献列表 + 更新 main.aux（写入cite-编号映射）
   ↓
第四轮 LaTeX -> 读取 main.tex+main.aux -> 填充 cite 编号 + 校准页码 -> 最终 PDF
```
