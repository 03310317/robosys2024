# robosys2024
ロボットシステム学授業

- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
    - [ryuichiueda/my_slides robosys_2024](https://github.com/ryuichiueda/slides_marp/tree/169907a7645812969a347a91caed6246febd6bf1/robosys2024)
- © 2024 Kosuke Abe

## プロジェクトタイトル

「おみくじシミュレーター」
このおみくじシミュレーターは、シンプルな方法で運勢を占うことができるスクリプトです。プログラムを実行すると、以下の流れで動作します。
1. ユーザーがEnterキーを押す:
  ・プログラムがスタートし、ランダムに運勢を選びます。
2. 運勢の結果を表示:
  ・凶~大吉の中からランダムに選ばれた運勢が表示されます。
3. 運勢に対してのコメント:
  ・選ばれた運勢に応じて、願望や病気など様々なカテゴリーごとに詳細な助言が表示されます。

## 概要

- このプロジェクトは何をするものか？
　シンプルな方法で運勢を占うもの

- なぜこのプロジェクトが必要なのか？
　神社などに足を運ばなくとも運勢占いの楽しさを知ってほしいため。

- 主な機能は何か？
　運勢占い。

## 使用方法

以下の手順でプロジェクトをローカル環境にインストールしてください。

リポジトリをクローン
git clone https://github.com/03310317/robosys2024.git

ディレクトリに移動
cd robosys2024

実行権限を与える
chmod +x omikuzi



## 実行方法の例

./omikuziと入力して実行。
おみくじを引く場合はEnterを入力するよう指示されるのでEnterを押す。

## サンプル

サンプルコード

import sys
import random
import time

x = ['凶','末吉','半吉','吉','大吉']

comment = {
        '凶': {
            '出会': "落ち着いた交際の続くことなし。",
            '縁談': "相手に難あり。",
            '結婚': "悩みが絶えないでしょう。",
            '願望': "迷えば不運あり。",
            '待人': "腐縁に注意すべし。",
            '病気': "用心すべし。",
            '失物': "出難し。",
            '旅行': "急げば悪し。",
            '恋愛': "先入観にとらわれず、相手をあるがまま受け入れよ。",
            '仕事': "諸事労有れば復旧す。",
            },
        '末吉': {
            '出会': "思いを寄せてくれている人に気づくこと無く縁も遠し。",
            '縁談': "焦らず好機を待つこと。",
            '結婚': "神様に祈りなさい。赤い糸で結ばれた相手が現れる。",
            '願望': "良き人の助言有りて叶う。",
            '待人': "差し支えあり。",
            '病気': "神に祈りて難を逃れるべし。",
            '失物': "冷静に探せ。",
            '旅行': "一人にて行くべし。",
            '恋愛': "信心によりどんな迷いも強い意志を持て進み、互いの絆を育むことに勤めましょう。",
            '仕事': "石橋を叩いて渡る時。",
            },
        '半吉': {
            '出会': "理想を求めすぎては良縁もまとまらない。現実の相手を素直に受け入れましょう。",
            '縁談': "落ち着いて定めよ。",
            '結婚': "見合わせましょう。",
            '願望': "焦らず待て。",
            '待人': "来るが遅し。",
            '病気': "思いがけず長引く。",
            '失物': "出で難し。",
            '旅行': "心配事あり。",
            '恋愛': "恋敵が多く相手の心をつかむにやや難あり。",
            '仕事': "時運に背くと挫折す。",
            },
        '吉': {
            '出会': "誠意が通じ合えば強く惹かれあい、交際の始まりとなるでしょう。",
            '縁談': "話が合ってもまだ早い、もう少し待ちましょう良縁があります。",
            '結婚': "理想とはかけ離れているが、心惹かれる相手が現れるでしょう。",
            '願望': "二つの願いを一度に叶えんとすればわるし。",
            '待人': "遅れて必ず来る。",
            '病気': "おもうより軽し。",
            '失物': "近いところにあり。",
            '旅行': "さわ先入観にとらわれず相手をあるがまま受け入れよ",
            '恋愛': "盲目的に恋の炎を燃やすよりも、心穏やかに時間をかけて愛情を深めることが吉。",
            '仕事': "成功し信用が増す時。",
            },
        '大吉': {
            '出会': "良縁の話が近いうちにある。",
            '縁談': "神に感謝したいほど倖せな結婚ができる。",
            '結婚': "素晴らしい誠実な相手が待っています。",
            '願望': "遂げるに良し。",
            '待人': "来る。たよりあり。",
            '病気': "信心し、療養せよ。",
            '失物': "出るが手間取る。",
            '旅行': "楽しき旅になる。",
            '恋愛': "互いに尽くしあう気持ちを大切に、実りある交際を続けましょう。",
            '仕事': "諸事成果有り最善を尽くせ。",
            },
        }

print("おみくじを引く(press to Enter)")
input()

i = random.choice(x)

print(f"あなたの運勢は...")
time.sleep(1)
print(f"{i}")

selected_keys = random.sample(list(comment[i].keys()), 6)

for 項目 in selected_keys:
    print(f"{項目}: {comment[i][項目]}") 

## ライセンス

・このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用を許可されています。
・© 2024 Kosuke Abe


## 貢献

貢献方法は以下の通りです。

1.フォークする。
2.新しいブランチを作成する。(git checkout -b feature/YourFeature)
3.コードをコミットする。(git commit -m 'Add some feature')
4.プッシュする。(git push origin feature/YourFeature)
5.プルリクエストを作成する。

## クレジット
(使用したライブラリや貢献者の名前を記す。)

Du目的
自身の録音した声に対し実験を行い、その結果からみられる周波数スペク 
トルの持つ意味を考える。 
理論
DFT とは、「あるディジタル信号データを、「周期的なデータ」で「三角関
数の無限和として表せる」と仮定した時に、それぞれの三角関数の「周波数」
「振幅」「位相」を求めることができます。」[参考文献 1]。今回は、使用す
るソフトウェアの関係上、早く計算できるようにした FFT(高速フーリエ変
換)を使用し、グラフィカル表示することで得られた結果を可視化させる。 
内容および方法
1.音素・単語・短文などの自分の声をPCに録音する。C
