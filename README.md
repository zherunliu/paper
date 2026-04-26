# paper

## Get Started

使用 XeLaTeX 编译

```bash
./build.sh njupt
```

BibTeX 参考文献处理流程：LaTeX → BibTeX → LaTeX → LaTeX

```plain
main.tex + mybib.bib
   ↓
第一轮 LaTeX → 读取 main.tex → 更新 main.aux（写入cite/样式/库信息）
   ↓
第二轮 BibTeX → 读取 main.aux + mybib.bib → 生成 main.bbl + main.blg
   ↓
第三轮 LaTeX → 读取 main.tex+main.bbl → 生成参考文献列表 + 更新 main.aux（写入 cite-编号映射）
   ↓
第四轮 LaTeX → 读取 main.tex+main.aux → 填充 cite 编号 + 校准页码 → 最终 PDF
```

## Git patch

```bash
git diff --binary -- \
./NJUPT_Professional_Thesis_draft/chapters/chapter3.tex \
./NJUPT_Professional_Thesis_draft/chapters/chapter4.tex \
> ./theory-proof-review.patch

git diff --binary --no-index -- /dev/null \
./CHANGELOG.md \
>> ./theory-proof-review.patch

git apply ./theory-proof-review.patch
```
