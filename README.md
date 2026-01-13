## 参考・謝辞
本プロジェクトは、以下の実装を参考にしています。

redlily / training_vrchat_tracking https://github.com/redlily/training_vrchat_tracking

うぇぶとらでは、上記のプロジェクトによって示された「WebカメラとMediaPipeを用いたVRChat向けトラッキング」という画期的な仕組みに感銘を受け、そのロジックを参考にしつつ、全てのコードを実用性と拡張性の観点から一から独自に書き直して作成しました。

単なる移植に留まらず、オブジェクト指向による再設計、Tkinterを用いたGUI操作系、および独自の補正アルゴリズム（スムージング処理等）を盛り込むことで、日常的に使いやすいツールとしての完成度を目指しました。

素晴らしいアイデアと先駆的な実装を公開してくださった redlily 氏に、最大の敬意と感謝を表します。

## うぇぶとら (Webutora)
Webカメラだけで全身トラッキングを行い、VRChatへOSCで送信するPython製ツール。

「まず動く」を最優先に、軽量・シンプル・実用性重視の構成で作られています。

概要
Webカメラ入力から人体姿勢を推定

3D座標に変換し、体型差を補正

VRChat(OSC)へ8点トラッカーとして送信

GUIから起動・停止・再キャリブレーションを操作可能

主な機能
MediaPipeによる全身トラッキング

3D座標生成・キャリブレーション: 体型補正（身長・骨格差を吸収）

VRChat連携: OSCによる8点トラッカー出力

柔軟なコントロール: トラッカー個別ON/OFF、全体のON/OFF

Tkinter製GUI: 全体位置のリアルタイム調整、カウントダウン付き再キャリブレーション

想定用途
フルトラ機材を持っていない環境でのVRChat利用

トラッキング挙動の検証・実験

モーションデータ処理の研究・プロトタイピング

動作環境
OS：Windows

Python：3.10

Webカメラ必須

VRChat (OSC有効化が必要)

使用技術
Python / MediaPipe Pose / OpenCV / NumPy / SciPy / Tkinter / python-osc

セットアップ（概要）
必要なライブラリをインストール
https://www.python.org/downloads/release/python-3100/

poetry install

poetry run python webutora_osc_sender.py


VRChat側でOSCを有効化

スクリプトを起動

GUIからトラッキング開始、初回キャリブレーションを実行

注意事項・制限
精度は業務用フルトラ機材より低く、照明やカメラ角度の影響を強く受けます。

長時間使用時はドリフトが発生する場合があります。

開発方針
精度よりも安定動作と軽さを優先。

改造・実験しやすい構造を重視しています。

動作している様子はここから
https://www.youtube.com/watch?v=n2ApPbEG0XY&feature=youtu.be
