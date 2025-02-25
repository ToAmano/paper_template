- 分割ファイルをまとめる方法について
https://zenn.dev/ultimatile/articles/b3fbd4ec65373d

latexpandというコマンドを利用する．

```
latexpand　input.tex > submit.tex
```
再投稿の際には
```
latexpand ver_0_after.tex > resubmit.tex
```
と展開した．

ただし，これは単にファイルを展開するだけで，図表のpathなどは変更してくれない．従ってこれらを変更する必要がある．

1: includestandaloneをincludegraphicsへ．
2: プリアンブルに \graphicspath{{figure/}{table/}}と書いて図表用のpathを追加する．
3: pathを平打ちする．arxivに提出する際はpathなしにしておかないとまずいので．
