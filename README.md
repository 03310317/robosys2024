# randomコマンド
[![test](https://github.com/03310317/robosys2024/actions/workflows/test.yml/badge.svg)](https://github.com/03310317/robosys2024/actions/workflows/test.yml)

## プロジェクトタイトル

「おみくじシミュレーター」

## 概要

このおみくじシミュレーターは、シンプルな方法で運勢を占うことができるスク>リプトです。プログラムを実行すると、以下の流れで動作します。
-  ユーザーの名前を入力してもらいEnterキーを押してもらう。名前は結果に表    示される。名前が入力されなかった場合は匿名で表示。

-  ユーザーがEnterキーを押すとプログラムがスタートし、ランダムに運勢を選    びます。
                                                            
-  結果は、凶~大吉の中からランダムに選ばれた運勢が表示されます。
        
-  選ばれた運勢に応じて、願望や病気など様々なカテゴリーごとに詳細な助言     が表示されます。

## 使用方法

以下の手順でリポジトリをクローンし、プログラムを実行します。

- リポジトリのクローン
```
$ git clone https://github.com/03310317/robosys2024.git
```

- ディレクトリへ移動
```
$ cd robosys2024
```

- 実行権限を与える
```
$ chmod +x omikuji_simulator
```

- 実行
```
$ echo あなたの名前 | ./omikuji_simulator
```
 
## 実行方法の例

```
$ echo 山田太郎 | ./omikuji_simulator
山田太郎さんの運勢は...
吉
願望: 二つの願いを一度に叶えんとすればわるし。
待人: 遅れて必ず来る。
病気: おもうより軽し。
失物: 近いところにあり。
恋愛: 盲目的に恋の炎を燃やすよりも、心穏やかに時間をかけて愛情を深めることが吉。
```
```
$ echo (空白) | ./random
匿名さんの運勢は...
吉
願望: 二つの願いを一度に叶えんとすればわるし。
待人: 遅れて必ず来る。
病気: おもうより軽し。
失物: 近いところにあり。
恋愛: 盲目的に恋の炎を燃やすよりも、心穏やかに時間をかけて愛情を深めることが吉。
```

## 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.7~3.10

## テスト環境
- 対応OS: Ubuntu 22.04

## ライセンス

- このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用   を許可されています。
- © 2024 Kosuke Abe
