# Rust開発環境

## プロジェクト初期化

### アプリケーション開発

`cd`の代わりに、**Dev Container内でワークスペース自体を`my_app`や`my_lib`ディレクトリに変更**すると、より混乱が少ない
(コマンドパレットから`File: Open Folder`で変更できる)。


```bash
# 新規プロジェクト作成
cargo new my_app
cd my_app

# ビルド
cargo build

# 実行
cargo run

# テスト
cargo test
```

### ライブラリ開発

```bash
# 新規ライブラリ作成
cargo new my_lib --lib
cd my_lib

# ビルド
cargo build

# テスト
cargo test
```


## 開発環境

- Rust
- cargo
- 開発ツール
  - clippy (lint)
  - rustfmt (コードフォーマッター)
  - cargo-edit (依存関係管理)
  - cargo-watch (ファイル変更監視)
  - cargo-tree (依存関係ツリー表示)
  - sccache (ビルドキャッシュ)

## 便利なcargoコマンド

```bash
# 依存関係の追加
cargo add <package>

# 依存関係の更新
cargo update

# ドキュメント生成
cargo doc --open

# クリーンビルド
cargo clean
```

## プロジェクト構造

### アプリケーション
```
my_app/
├── Cargo.toml
├── src/
│   └── main.rs
└── target/
```

### ライブラリ
```
my_lib/
├── Cargo.toml
├── src/
│   └── lib.rs
└── target/
```