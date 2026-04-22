[English](README.md) | [Español](README.es.md) | [हिन्दी](README.hi.md) | [ಕನ್ನಡ](README.kn.md) | [தமிழ்](README.ta.md) | [తెలుగు](README.te.md) | [संस्कृतम्](README.sa.md) | [Deutsch](README.de.md) | [日本語](README.ja.md) | [Русский](README.ru.md) | [বাংলা](README.bn.md) | [Français](README.fr.md) | [Português](README.pt.md)

**注：この翻訳に言語的な誤りがある場合はご容赦ください。ドキュメントとプロジェクトをよりよく理解していただくために、あなたの言語で提供しました。技術的な正確さについては、英語またはスペイン語版を参照してください。**

<div align="center">

## MayankOS 🟰 最高の ❄️ NixOS 設定

\*\* 更新日: 2026年4月22日

MayankOS は、私の NixOS 設定をあらゆるシステムで再現するためのパワフルでエレガントな方法です。**ZaneyOS** プロジェクトの柔軟性とインスピレーションを基に構築されており、壁紙、スクリプト、アプリケーション、最適化されたハードウェアサポートを含む高度にカスタマイズされた環境を提供します。

## 🚀 新機能とハードウェアサポート (v2.6.1)

このバージョンでは、最新ハードウェアに対する大幅な最適化とサポートが行われています：

### 💻 MSI Modern 14 C7M & AMD 7000 シリーズ
- **最適化された AMD 7530U パフォーマンス**: `amd-pstate-epp` と `auto-cpufreq` をフル活用し、パワーとバッテリー寿命の完璧なバランスを実現。
- **バッテリーヘルス管理**: `msi-ec` を介した **MSI Battery Thresholds** のネイティブサポートにより、プラグ挿入時の充電を 80% に制限してバッテリーを保護。
- **高度なパワースケーリング**: 電源状態に基づき、`performance` モードと `powersave` モードを自動的に切り替え。
- **次世代グラフィックス**: VA-API ハードウェアアクセラレーション、ROCm、Vulkan ツールが事前設定された完全な `amdgpu` サポート。

### 🎨 多彩なシェル体験
`variables.nix` の `barChoice` を設定して、お好みのデスクトップ体験を選択してください：
- **Noctalia**: システムコントロールを統合した、モダンで機能豊富なシェル。
- **Caelestia**: エレガントで軽量な選択肢。
- **DMS (DankMaterialShell)**: マテリアルデザインにインスパイアされた、洗練されたモダンな外観のシェル。
- **Waybar**: クラシックで高度にカスタマイズ可能なステータスバー。

### 🔧 システム拡張
- **最新の Linux カーネル**: 最高のハードウェア互換性のために **7.x カーネル** ラインで動作。
- **強化された Niri サポート**: スクロール可能なタイル型コンポジター Niri の完全な統合。
- **改善された仮想化**: VMware やその他の仮想化プラットフォーム向けの最適化されたサポート。

## 🤝 ZaneyOS との関係

MayankOS は、伝説的な [ZaneyOS](https://gitlab.com/Zaney/zaneyos.git) プロジェクトの誇り高き後継です。NixOS をアクセシブルで美しいものにするという精神は共通していますが、MayankOS は独自のデザインとフォーカスを持つ独自のディストリビューションへと進化しました。

### 🌟 MayankOS の違いは何ですか？
- **最新ハードウェアへの注力**: ZaneyOS のより一般的なアプローチとは異なり、MayankOS は最新の **AMD Ryzen 7000 シリーズ**や **MSI ノートパソコン**（バッテリーの健康管理を含む）向けの高度な最適化が含まれています。
- **拡張されたシェルエコシステム**: Waybar だけでなく、**Noctalia**、**Caelestia**、**DMS** をフルサポートし、デスクトップワークフローの選択肢を広げました。
- **最新カーネル戦略**: 最新のハードウェア機能がすぐに動作するように、`linuxPackages_latest` (7.x+) を優先しています。
- **Niri の統合**: オリジナルの ZaneyOS にはない独自のワークフローである **Niri scrollable-tiling compositor** のファーストクラスのサポートを追加しました。
- **強化された国際化**: NixOS の体験を世界中の人々に届けるため、13 以上の言語をサポートしています。

オリジナルのインスピレーションをお探しの場合は、[ZaneyOS 公式 GitLab](https://gitlab.com/Zaney/zaneyos.git) をご覧ください。 MayankOS はその素晴らしい基盤を受け継ぎ、最先端のハードウェアサポートとより多様なデスクトップシェルを必要とするユーザーのために、さらに進化させています。

## 🏗️ インストール：自動 vs 手動

MayankOS は、使い始めるための 2 つの主な方法を提供しています。
1. **自動スクリプト（新規ユーザーに推奨）**: すべてを自動で処理する、高速な 1 コマンドのインストールです。これが、動作するデスクトップを手に入れる最も手っ取り早い方法です。
2. **手動インストール**: システムのあらゆる側面を完全に制御したいユーザー向けです。最初の再構築の*前*にツールをカスタマイズしたい場合は、手動インストールの方が適しています。

## ⚡ プロフェッショナル VLSI & ハードウェアエンジニアリング ワークステーション

MayankOS は、**VLSI およびハードウェアエンジニアリング**のための高性能でプロフェッショナルなワークステーションとして特別に設計されています。

- **なぜ最適なのか**: 以下のための包括的なツールスイートが事前設定されています。
  - **HDL シミュレーション**: `iverilog`, `verilator`, `gtkwave`
  - **論理合成 & 物理設計**: `yosys`, `magic-vlsi`, `klayout`, `openroad`
  - **FPGA & 組み込み開発**: `nextpnr`, `icestorm`, `dfu-util`, `qemu`
  - **PCB & 回路図設計**: `kicad`, `ngspice`
- **カスタマイズ方法**: これらのツールが必要ない場合は、`nixos-rebuild` を実行する前に `modules/core/packages.nix` 内の `# --- VLSI & Hardware Engineering ---` ブロックをコメントアウトまたは削除するだけです。
- **将来への備え**: これは始まりに過ぎません。MayankOS をハードウェア設計者にとっての究極のプラットフォームにするため、今後のアップデートでさらに専門的な VLSI および EDA ツールが計画されています。

## 🛠️ カスタムハードウェア＆ホストセットアップガイド

1. **新しいホストの作成**:
   - `hosts/default` フォルダを、コンピュータ名にちなんだ新しいフォルダにコピーします（例: `cp -r hosts/default hosts/my-laptop`）。
2. **ハードウェア構成の生成**:
   - `nixos-generate-config --show-hardware-config > hosts/your-hostname/hardware.nix` を実行して、特定のハードウェア（ドライブ、CPUなど）を自動的に検出します。
3. **プロファイルの選択**:
   - `flake.nix` を開き、ハードウェアに合わせて `profile` 変数を設定します（オプション: `amd`, `intel`, `nvidia`, `nvidia-laptop`, `amd-nvidia-hybrid`, または `vm`）。
4. **変数の設定**:
   - `hosts/your-hostname/variables.nix` を編集して、画面解像度、優先シェル（`barChoice`）、およびその他の個人設定を設定します。
5. **他のノートパソコンのサポート**:
   - MSI のような特殊なノートパソコンをお使いの場合は、`hosts/msi-modern14c7m/default.nix` を参照して、`msi-ec` のようなカーネルモジュールを追加する方法の例を確認してください。
6. **最終ビルド**:
   - `sudo nixos-rebuild switch --flake .#your-profile` を実行して、すべてを適用します。

## Noctalia に関する重要な注意点

> 初回ログイン時、画面は空白になります。SUPER + SHIFT + C を押して終了してください。
> 再度ログインすると、それ以降は Noctalia が起動します。

<img align="center" width="80%" src="img/MayankOS-Floating.png" />

</div>

<details>
<summary><strong>📸 その他のスクリーンショット</strong></summary>

### Waybar テーマ

<img align="center" width="80%" src="img/demo-img2.png" />

<img align="center" width="80%" src="img/demo-img3.png" />

### Noctalia シェル統合

<img align="center" width="80%" src="img/MayankOS-noctalia-panel.png" />

<img align="center" width="80%" src="img/MayankOS-noctalia-app.png" />

<img align="center" width="80%" src="img/MayankOS-noctalia-settings.png" />

<img align="center" width="80%" src="img/MayankOS-noctalia-weather.png" />

### 追加機能

<img align="center" width="80%" src="img/MayankOS-keybind-search.png" />

<img align="center" width="80%" src="img/MayankOS-nivim-emacs.png" />

### ハードウェアサポート (MSI Modern 14 C7M)

<img align="center" width="80%" src="img/MayankOS-MSI-Modern14.png" />

</details>

<div align="center">

### チートシートとガイド

- Nix 初心者ガイド: [English](cheatsheets/nix-beginner-guide.md) |
  [Español](cheatsheets/nix-beginner-guide.es.md)
- Hyprland カスタマイズガイド:
  [English](cheatsheets/hyprland-customization-guide.md) |
  [Español](cheatsheets/hyprland-customization-guide.es.md)

#### 🍖 要件

- NixOS バージョン 24.05+ を使用している必要があります。
- `mayankos` フォルダ（このリポジトリ）がホームディレクトリにある必要があります。
- **GPT** パーティションを使用し、**UEFI** でブートして NixOS をインストールしている必要があります。
- ** 最小 500MB の /boot パーティションが必要です。 **
- Systemd-boot がサポートされています。
- GRUB については、インターネットで方法を探してください。 ☺️
- ホスト固有のファイルを手動で編集すること。
- ホストとは、インストール先の特定のコンピュータのことです。

#### 🎹 Pipewire と通知メニューコントロール

- Linux 向けの最新かつ最高のオーディオソリューションを使用しています。また、トップバーから利用可能な通知センターでメディアと音量のコントロールが可能です。

#### 🏇 最適化されたワークフローと高度なウィンドウ管理

- **Hyprland サポート**: 優雅さと効率を高めるためのデフォルトのタイル型ウィンドウマネージャー。
- **Niri サポート**: スクロール可能なタイル型 Wayland コンポジターである Niri を完全にサポート。`variables.nix` の `niriEnable` で切り替え可能です。
- **KDE Plasma (オプション)**: KDE Plasma 6 のサポートが利用可能ですが、デフォルトでは無効になっています。
- 巨大な NeoVIM プロジェクトではなく、言語サポートがすでに追加された素晴らしい NeoVIM 設定のために `nixvim` を使用しています。

#### 🖥️ マルチホストとユーザー設定

- 異なるホストマシンやユーザーに対して個別の設定を定義できます。
- `modules/core/user.nix` ファイルで、ユーザー向けの追加パッケージを簡単に指定できます。
- 理解しやすいファイル構造と、シンプルながらも包括的な設定。

#### 👼 サポートを重視した素晴らしいコミュニティ

- MayankOS の全体的なアイデアは、NixOS を親しみやすい場所にすることです。
- NixOS は、あなたが参加したくなるような本当に素晴らしいコミュニティです。
- 忍耐強く、自由な時間を割いてあなたを助けてくれる多くの人々が MayankOS を動かしています。
- 何か助けが必要な場合は、お気軽に Discord でお問い合わせください。

#### 📦 パッケージのインストール方法

- [Nix Packages](https://search.nixos.org/packages?) や [Options](https://search.nixos.org/options?) ページで、パッケージ名や、設定のハードルを解消してくれるオプションがあるかどうかを検索できます。
- パッケージを追加するには、`modules/core/packages.nix` と `modules/core/user.nix` にセクションがあります。一方はシステム全体で利用可能なプログラム用で、もう一方はユーザー環境専用です。

#### 🐧 デスクトップ環境の切り替え

MayankOS は複数の環境をサポートしています：
- **Hyprland**: デフォルトで有効。
- **Niri**: ホストの `variables.nix` で `niriEnable = true;` を設定して有効にします。
- **KDE Plasma**: KDE Plasma を有効にするには、`modules/core/xserver.nix` に移動し、`services.desktopManager.plasma6.enable = true;` の行と関連する `environment.systemPackages` ブロックのコメントを解除します。

#### 🙋 問題や質問がありますか？

- リポジトリで問題（issue）を提起してください。機能リクエストの場合は、タイトルを [feature request] で始めてください。ありがとうございます！
- より迅速な回答が必要な場合は、[Discord](https://discord.gg/XhZmNTnhtp) でもお問い合わせください。

# Hyprland キーバインド

以下は Hyprland のキーバインドです。参照しやすいようにフォーマットされています。右側の列は **Noctalia シェル** 専用のキーバインドです（`barChoice = "noctalia"` の場合のみ利用可能）。

<table>
<tr>
<td width="50%">

## 標準キーバインド

### アプリケーションの起動

- `$modifier + Return` → `terminal` を起動
- `$modifier + Tab` → `Quickshell Overview` を切り替え（ライブプレビュー付きのワークスペース概要）
- `$modifier + K` → キーバインドを一覧表示
- `$modifier + Shift + W` → `web-search` を開く
- `$modifier + Alt + W` → `wallsetter` を開く
- `$modifier + Shift + N` → `swaync-client -rs` を実行
- `$modifier + W` → `Web Browser` を起動
- `$modifier + Y` → `kitty` で `yazi` を開く
- `$modifier + E` → `emopicker9000` を開く
- `$modifier + S` → スクリーンショットを撮る
- `$modifier + Shift + D` → `Discord` を開く
- `$modifier + O` → `OBS Studio` を起動
- `$modifier + Alt + C` → カラーピッカー
- `$modifier + G` → `GIMP` を開く
- `$modifier + T` → `pypr` でターミナルを切り替え
- `$modifier + Alt + M` → `pavucontrol` を開く

### ウィンドウ管理

- `$modifier + Q` → アクティブウィンドウを閉じる
- `$modifier + P` → 疑似タイル（pseudo tiling）を切り替え
- `$modifier + Shift + I` → 分割モードを切り替え
- `$modifier + F` → 全画面を切り替え
- `$modifier + Shift + F` → フローティングモードを切り替え
- `$modifier + Alt + F` → すべてのウィンドウをフローティングにする
- `$modifier + Shift + C` → Hyprland を終了

### ウィンドウの移動

- `$modifier + Shift + ← / → / ↑ / ↓` → 左/右/上/下へ移動
- `$modifier + Shift + H / L / K / J` → 左/右/上/下へ移動
- `$modifier + Alt + ← / → / ↑ / ↓` → 左/右/上/下を入れ替え

### フォーカスの移動

- `$modifier + ← / → / ↑ / ↓` → フォーカスを左/右/上/下へ移動
- `$modifier + H / L / K / J` → フォーカスを左/右/上/下へ移動

### ワークスペース

- `$modifier + 1-10` → ワークスペース 1-10 へ切り替え
- `$modifier + Shift + Space` → ウィンドウを専用ワークスペースへ移動
- `$modifier + Space` → 専用ワークスペースを切り替え
- `$modifier + Shift + 1-10` → ウィンドウをワークスペース 1-10 へ移動
- `$modifier + Control + → / ←` → ワークスペースを順方向/逆方向に切り替え

### ウィンドウの巡回

- `Alt + Tab` → 次のウィンドウへ巡回 / アクティブウィンドウを最前面へ

</td>
<td width="50%">

## 🎨 Noctalia シェル キーバインド

_`variables.nix` で `barChoice = "noctalia"` の場合に利用可能_

- `$modifier + D` → ランチャーの切り替え
- `$modifier + Shift + Return` → ランチャーの切り替え
- `$modifier + M` → 通知メニュー
- `$modifier + V` → クリップボードマネージャー
- `$modifier + Alt + P` → 設定パネル
- `$modifier + Shift + ,` → 設定パネル
- `$modifier + Alt + L` → 画面ロック
- `$modifier + Shift + Y` → 壁紙マネージャー
- `$modifier + X` → 電源メニュー
- `$modifier + C` → コントロールセンター
- `$modifier + Ctrl + R` → スクリーンレコーダー

### Rofi ランチャー (Waybar モード)

_`variables.nix` で `barChoice = "waybar"` の場合に利用可能_

- `$modifier + D` → Rofi ランチャーを起動
- `$modifier + Shift + Return` → Rofi ランチャーを起動

### その他の機能

- `$modifier + Shift + Return` (Waybar) → アプリケーションランチャー
- `$modifier + V` (Waybar) → `cliphist` によるクリップボード履歴

</td>
</tr>
</table>

## インストール方法：

> **⚠️ 重要:** これらのインストール方法は、**新規インストールのみ**を対象としています。すでに MayankOS をインストール済みで、v2.4 にアップグレードしたい場合は、以下の [アップグレード手順](#upgrading-from-mayankos-23-to-24) を参照してください。注：アップグレードスクリプトに問題があるため、修正されるまで削除されています。

<details>
<summary><strong> ⬇️ スクリプトでインストール (新規インストールのみ)</strong></summary>

### 📜 スクリプト:

これは、**新規インストール**の場合に最も簡単で推奨される方法です。このスクリプトは、flake のすべてのオプションを変更したり、追加のパッケージをインストールしたりするためのものではありません。単に、私の設定を最小限のトラブルでインストールし、その後自由にカスタマイズできるようにするためのものです！

> **⚠️ 警告:** このスクリプトは、既存の ~/mayankos ディレクトリを完全に上書きします。すでに MayankOS をインストールおよび設定済みの場合は、使用しないでください。

以下をコピーして実行してください：

```bash
nix-shell -p git curl pciutils
```

次に：

```bash
sh <(curl -L https://raw.githubusercontent.com/techanand8/mayankos/main/install-mayankos.sh)
```

#### インストール完了後、環境が壊れているように見えるかもしれませんが、再起動するだけでログイン画面が表示されます。

</details>

<details>
<summary><strong> 🦽 手動インストールプロセス:  </strong></summary>

1. Git と Vim がインストールされていることを確認するために、以下のコマンドを実行します：

```bash
nix-shell -p git vim
```

2. このリポジトリをクローンして移動します：

```bash
cd && git clone https://github.com/techanand8/mayankos.git ~/mayankos
cd ~/mayankos
```

3. 次のように、マシンのホストフォルダを作成します：

```bash
cp -r hosts/default hosts/<your-desired-hostname>
```

4. ハードウェア設定を生成します：

```bash
nixos-generate-config --show-hardware-config > hosts/<your-desired-hostname>/hardware.nix
```

5. `hosts/<your-desired-hostname>/variables.nix` と `flake.nix` を編集して、ホスト名とプロファイルに合わせます。

6. flake をインストールします（`profile` を `intel`, `nvidia`, `nvidia-laptop`, `amd`, `amd-nvidia-hybrid`, または `vm` に置き換えてください）：

```bash
sudo nixos-rebuild switch --flake .#profile
```

設定を再構築（rebuild）したいときは、`mcli rebuild` コマンドまたは `fr` エイリアスを使用できます。

</details>

### 特記事項：

多大なるご支援に感謝いたします。

- KoolDots https://github.com/LinuxBeginnings
- JakKoolit https://github.com/Jakoolit
- Justaguylinux https://codeberg.org/Justaguylinux
- Jerry Starke https://github.com/JerrySM64

## 楽しんでいただければ幸いです！
