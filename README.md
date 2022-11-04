Ninjabrain Bot（以下Ninb）をシングルディスプレイでも使いやすくするため、Ninbの画像を部分的にオーバーレイ表示します。  
マイクラがウインドウで動作します。フルスクリーンでは動作しません。  
また、ちょっとしたオプションにも対応しています。

## スクリーンショット
![20221105003115](https://user-images.githubusercontent.com/97399080/200014588-3d9d47f1-0d22-430e-9660-b0a2056c23c7.png)
ディスプレイの左上に、候補を2つまで表示している例。

## 設定
#### Ninbの設定
    いずれも必須
    
    View Type = Detailed
    Window Size = Small or Medium (Largeは非対応)
    OBSオーバーレイを有効化 (Enable Overlay)
    
#### NinbMacroの設定
    任意で変更してください
    
    NinbX = 表示するX座標
    NinbY = 表示するY座標
    NinbSize = Ninbのサイズ設定 (0= Small, 1= Medium)
    ViewCoords = 表示する候補の数 (1~5。上位から表示します。2以上にするとDivineも表示可能です)
    NinbPic = Ninbのオーバーレイ用の画像パス (Ninbの設定からパスを取得してください)
    
    GuiShowHide = 表示/非表示を行うキー (デフォルトはJ。91行目で変更)
    
## 使い方
NinbMacroを起動して、通常通りNinbを使用します。  
計算結果が表示/更新されると、自動的にNinbMacro側も表示/更新されます。Jキー (デフォルト) で手動で表示/非表示も可能です。  
Ninbは最小化していても動作します。

## ちょっと微妙な点
自動的にNinbMacro側が表示/更新されるとき、マイクラからフォーカスが外れます。  
厳密には、マイクラ内で移動中などにフォーカスが外れます。移動せず立っているだけならフォーカスが外れることはありません。  
手動で表示/非表示する場合には関係ありません。

フルスクリーン対応はシステム上不可能と思われます。

## 連絡
バグや要望などあれば[製作者のTwitter](https://twitter.com/oyamelon)までお願い致します。

----

###### 本レポジトリは、[Supporting-Ninb-on-a-single-display](https://github.com/oyamelon/Supporting-Ninb-on-a-single-display)を新しくしています。
