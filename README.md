# TIL (Today I Learned)

エンジニア学習の日報を記録するリポジトリです。

## 構成

- `YYYY/MM/` - 年/月のディレクトリ構造
- `templates/` - 記録用テンプレート
- `scripts/` - ヘルパースクリプト

## ファイル構造

```
TIL/
├── 2025/
│   ├── 01/
│   │   ├── 01.md    # 2025年1月1日の日報
│   │   ├── 02.md    # 2025年1月2日の日報
│   │   └── ...
│   ├── 02/
│   │   └── ...
│   └── 07/
│       ├── 25.md    # 2025年7月25日の日報
│       └── ...
├── templates/
│   └── daily-template.md
└── scripts/
    └── til-helper.sh
```

## 記録方法

### 日次記録

```bash
# 今日の日報を作成
./scripts/til-helper.sh
```

## til-helper.sh の機能

- 今日の日付で日報ファイルを自動作成
- ディレクトリ構造 `YYYY/MM/` を自動生成
- ファイル名は `DD.md` 形式
- テンプレートから自動コピー&日付置換
- 既存ファイルがある場合は重複作成を防止

### 生成例

```bash
./scripts/til-helper.sh
# → 2025/07/25.md が作成される
```
