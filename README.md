# rename_file
連番のファイル名を変更したい時に便利。細かい設定が欲しい場合は言ってください

# 超絶簡単な説明
1. まず、名前を変えたい連番のファイルが入ったフォルダを`target`配下に設置
※注意：
この時target配下のフォルダは変えたいファイルが入っているもの以外は全て除去してください
また、target配下のフォルダの中身が最下層になるようにしてください。つまりファイルのみにしてください。
 ```
 //例：OK
 ＄ ls /users/user/documents/rename_file/target/hoge
 hoge001.png 
 hoge002.png //最下層がファイルのみなのでOK
 //NG
  ＄ ls /users/user/documents/rename_file/target/hoge
 hoge001.png 
 hoge002.png
 fuga
  ＄ ls /users/user/documents/rename_file/target/hoge/fuga
  fuga.png //targetの２つ下が最下層はNG
 ```
 
 2. 実行すると変換したいファイルの拡張子と拡張子なしでの変更後の名前を聞かれるので入力  
 3. そうすると[ファイル名][連番（１から）].[指定した拡張子]で作成されます（正直自由がきかない）
