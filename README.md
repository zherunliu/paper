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

## Slidev

```md
完整的阅读研究生毕业论文 ，对这篇文章做一个研究生课题组的汇报的 ppt。分为以下几个部分：

1. 封面
2. 问题与动机（1-2页）
3. 研究点1--chapter3内容（3-5页）
4. 研究点2--chapter4内容（3-5页）
5. 致谢

注意两个研究点的衔接过度。ppt 主题改为简约纯白，动画淡入淡出

项目框架已经搭建好了，推荐使用 TailwindCSS
```
