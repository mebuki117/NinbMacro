Ninjabrain Bot（以下Ninb）をシングルディスプレイでも使いやすくするため、Ninbの画像を部分的にオーバーレイ表示します。  
マイクラがウインドウで動作します。フルスクリーンでは動作しません。  
また、ちょっとしたオプションにも対応しています。

## スクリーンショット
![20221105003115](https://user-images.githubusercontent.com/97399080/200014588-3d9d47f1-0d22-430e-9660-b0a2056c23c7.png)
ディスプレイの左上に、候補を2つまで表示している例。

## 設定
#### Ninbの設定
- OBSオーバーレイを有効化 (Enable Overlay)

#### NinbMacroの設定
##### 基本設定
- ProjectorName = OBSプロジェクターの名前
- NinbPic = Ninbのオーバーレイ用の画像パス (Ninbの設定からパスを取得してください)  
##### 表示設定
- pic_x = X座標
- pic_y = Y座標
- pic_width = 幅
- pic_height = 高さ

## 使い方
NinbとNinbMacroを起動します。  
また、OBSにNinbを画像ソースとして追加し、追加した画像ソースをフルスクリーンプロジェクターで開きます。  

ProjectorNameには、Ninbの画像ソースをフルスクリーンプロジェクターで開いた際の名前です。  
画像ソースにフィルターでクロップなどを行った場合、表示する幅と高さを変更する必要があります (スクリーンショットのはクロップを行っています)。

## 動作
Ninbに計算結果が表示されている場合、設定された座標に画像が表示されます。  
逆に、Ninbに計算結果が表示されていない場合は、画像が非表示になります。

## 連絡
バグや要望などあれば[製作者のTwitter](https://twitter.com/oyamelon)までお願い致します。

----

###### 本レポジトリは、[Supporting-Ninb-on-a-single-display](https://github.com/oyamelon/Supporting-Ninb-on-a-single-display)を新しくしています。
