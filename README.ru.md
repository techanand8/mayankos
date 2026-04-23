[English](README.md) | [Español](README.es.md) | [हिन्दी](README.hi.md) | [भोजपुरी (बिहारी)](README.bh.md) | [ಕನ್ನಡ](README.kn.md) | [தமிழ்](README.ta.md) | [తెలుగు](README.te.md) | [संस्कृतम्](README.sa.md) | [Deutsch](README.de.md) | [日本語](README.ja.md) | [Русский](README.ru.md) | [বাংলা](README.bn.md) | [Français](README.fr.md) | [Português](README.pt.md) | [العربية (الكويت)](README.ar.md) | [繁體中文 (台灣)](README.zh_TW.md) | [Italiano (Svizzera)](README.it.md)
n**Примечание: Пожалуйста, простите любые лингвистические ошибки в этом переводе; я предоставил его на вашем языке, чтобы вы могли лучше понять документацию и проект. Для технической точности, пожалуйста, обращайтесь к английской или испанской версиям.**

**Примечание: Пожалуйста, извините за любые лингвистические ошибки в этом переводе; я предоставил его на вашем языке, чтобы вы могли лучше понять документацию и проект. Для технической точности, пожалуйста, обратитесь к английской или испанской версиям.**

<div align="center">

## MayankOS 🟰 Лучшие ❄️ конфигурации NixOS

\*\* Обновлено: 22 апреля 2026 г.

MayankOS — это мощный и элегантный способ воспроизвести мою конфигурацию NixOS на любой системе. Созданная на основе гибкости и вдохновения проекта **ZaneyOS**, она предоставляет высоконастроенную среду, включающую обои, скрипты, приложения и оптимизированную поддержку оборудования.

## 🚀 Новые функции и поддержка оборудования (v2.6.1)

Эта версия вносит значительные оптимизации и поддержку современного оборудования:

### 💻 MSI Modern 14 C7M и серия AMD 7000
- **Оптимизированная производительность AMD 7530U**: Полностью использует `amd-pstate-epp` и `auto-cpufreq` для идеального баланса между мощностью и временем автономной работы.
- **Управление состоянием батареи**: Нативная поддержка **MSI Battery Thresholds** через `msi-ec`, защищающая вашу батарею путем ограничения зарядки до 80% при подключении к сети.
- **Расширенное масштабирование мощности**: Автоматическое переключение между режимами `performance` и `powersave` в зависимости от состояния питания.
- **Графика нового поколения**: Полная поддержка `amdgpu` с аппаратным ускорением VA-API, ROCm и предварительно настроенными инструментами Vulkan.

### 🎨 Разнообразный опыт использования оболочки
Выберите предпочитаемую среду рабочего стола, установив `barChoice` в `variables.nix`:
- **Noctalia**: Современная, многофункциональная оболочка с интегрированными элементами управления системой.
- **Caelestia**: Элегантная и легкая альтернатива.
- **DMS (DankMaterialShell)**: Оболочка в стиле Material Design для изящного современного вида.
- **Waybar**: Классическая, высоконастраиваемая панель состояния.

### 🔧 Системные улучшения
- **Последнее ядро Linux**: Теперь работает на линейке **ядер 7.x** для лучшей совместимости с оборудованием.
- **Улучшенная поддержка Niri**: Полная интеграция для композитного менеджера Niri с прокруткой и тайлингом.
- **Улучшенная виртуализация**: Оптимизированная поддержка VMware и других платформ виртуализации.

## 🤝 Отношение к ZaneyOS

Этот проект является гордым потомком легендарного проекта [ZaneyOS](https://gitlab.com/Zaney/zaneyos.git). Хотя она разделяет тот же дух стремления сделать NixOS доступной и красивой, она превратилась в отдельный дистрибутив со своими особенностями:

### 🌟 Что делает её особенной?
- **Фокус на современном оборудовании**: В отличие от более общего подхода ZaneyOS, эта система включает глубокую оптимизацию для последней серии **AMD Ryzen 7000** и **ноутбуков MSI** (включая управление состоянием батареи).
- **Расширенная экосистема оболочек**: Мы вышли за рамки Waybar и добавили полную поддержку **Noctalia**, **Caelestia** и **DMS**, предоставляя вам больше возможностей для рабочего процесса.
- **Стратегия новейшего ядра**: Мы отдаем приоритет `linuxPackages_latest` (7.x+), чтобы новейшие функции оборудования работали незамедлительно.
- **Расширенные опции композитора**: Мы интегрировали полную поддержку **Niri scrollable-tiling compositor**, предоставляя современную альтернативу Hyprland для пользователей, предпочитающих рабочий процесс с прокруткой и тайлингом.
- **Улучшенная интернационализация**: Поддержка более 13 языков, чтобы сделать NixOS доступной для глобальной аудитории.

Если вы ищете первоначальное вдохновение, пожалуйста, посетите [официальный GitLab ZaneyOS](https://gitlab.com/Zaney/zaneyos.git). Эта среда берет этот невероятный фундамент и развивает его дальше для пользователей, которым нужна передовая поддержка оборудования и более разнообразный выбор оболочек рабочего стола.

## 🏗️ Установка: автоматическая или ручная

Предлагается два основных способа начать работу:
1. **Автоматический скрипт (рекомендуется для новых пользователей)**: быстрая установка одной командой, которая сделает все за вас. Это самый быстрый способ получить рабочую среду.
2. **Ручная установка**: для пользователей, которые хотят полного контроля над каждым аспектом своей системы. Ручная установка лучше, если вы хотите настроить свои инструменты *перед* первой пересборкой.

## ⚡ Профессиональная рабочая станция для VLSI и проектирования оборудования

Эта система специально разработана как высокопроизводительная профессиональная рабочая станция для **VLSI и проектирования оборудования**.

- **Почему она идеальна**: она поставляется с предварительно настроенным набором инструментов для:
  - **HDL-моделирование**: `ghdl`, `nvc`, `iverilog`, `verilator`, `gtkwave`, `surfer`, `fusesoc`, `surelog`.
  - **Синтез и физическое проектирование**: `yosys`, `magic-vlsi`, `netgen`, `klayout`, `openroad`, `xschem`, `gdsfactory`. (OpenLane ready)
  - **Разработка ПЛИС (FPGA) и встраиваемых систем**: `nextpnr`, `icestorm`, `openfpgaloader`, `dfu-util`, `qemu`.
  - **LSPs и инструменты**: `sv-lang`, `vhdl-ls`, `verible`, `veridian`, `svls`, `pyverilog`, `verilogae`, `volare`.
  - **PDKs**: Полная поддержка **SkyWater 130** и **GF180MCU** через `volare`.
  - **Проектирование печатных плат и схем**: `kicad`, `ngspice`, `xyce`, `doxygen`.
- **Как настроить**: Если вам НЕ нужны эти инструменты, вы можете просто закомментировать или удалить блок `# --- VLSI & Hardware Engineering ---` в файле `modules/core/packages.nix` перед запуском `nixos-rebuild`.
- **Advanced EDA**: For tools like **OpenLane** or advanced DFT suites not yet in standard Nixpkgs, we recommend using the [nix-eda](https://github.com/nix-eda/nix-eda) overlay or Docker containers to ensure PDK compatibility.
- **Готовность к будущему**: Это только начало; в будущих обновлениях запланировано добавление более специализированных инструментов VLSI и EDA (including built-in OpenLane v2 support), чтобы сделать её идеальной платформой для разработчиков оборудования.

## 🌐 Выбор и настройка веб-браузера

### Почему Microsoft Edge?

По умолчанию MayankOS теперь использует **Microsoft Edge**. Мы понимаем, что у сообщества Linux есть сильные предпочтения в отношении таких браузеров, как Firefox, Zen или Brave. Однако Edge был выбран для этой рабочей станции, потому что:
- **Совместимость**: Он обеспечивает отличную стабильность при работе с порталами профессиональной документации по оборудованию и веб-инструментами EDA.
- **Производительность**: Он обеспечивает эффективную работу с PDF и управление памятью для интенсивных технических исследований.
- **Рабочий процесс**: Он соответствует специфическим инженерным потребностям этой рабочей станции VLSI.

### Как изменить браузер по умолчанию

Если вы предпочитаете другой браузер, конфигурация позволяет легко переключиться:
1. **Измените переменную**: Откройте файл `variables.nix` вашего хоста (например, `hosts/msi-modern14c7m/variables.nix`) и измените строку `browser` на ваш выбор (например, `browser = "firefox";`).
2. **Проверьте установку**: Убедитесь, что ваш предпочтительный браузер указан в `modules/core/packages.nix`. Если его там нет, просто добавьте название его пакета (например, `librewolf`) в список.
3. **Пересборка**: Запустите `mcli rebuild` или вашу специфическую команду пересборки (например, `sudo nixos-rebuild switch --flake .#amd`), чтобы применить изменения.

Мы верим в выбор и свободу. Эта среда создана для того, чтобы быть вашей личной рабочей станцией — не стесняйтесь настраивать ее под себя!

 ## 🛠️ Руководство по настройке пользовательского оборудования и хоста

 1. **Создание нового хоста**:

   - Скопируйте папку `hosts/default` в новую папку, названную в честь вашего компьютера (например, `cp -r hosts/default hosts/my-laptop`).
2. **Генерация конфигурации оборудования**:
   - Запустите `nixos-generate-config --show-hardware-config > hosts/your-hostname/hardware.nix`, чтобы автоматически определить ваше оборудование (диски, процессор и т. д.).
3. **Выбор профиля**:
   - Откройте `flake.nix` и установите переменную `profile` в соответствии с вашим оборудованием (варианты: `amd`, `intel`, `nvidia`, `nvidia-laptop`, `amd-nvidia-hybrid` или `vm`).
4. **Настройка переменных**:
   - Отредактируйте `hosts/your-hostname/variables.nix`, чтобы установить разрешение экрана, предпочитаемую оболочку (`barChoice`) и другие личные настройки.
5. **Поддержка других ноутбуков**:
   - Если у вас специализированный ноутбук, такой как MSI, вы можете посмотреть `hosts/msi-modern14c7m/default.nix`, чтобы найти примеры добавления модулей ядра, таких как `msi-ec`.
6. **Финальная сборка**:
   - Запустите `sudo nixos-rebuild switch --flake .#your-profile`, чтобы применить все изменения.

## Важное примечание по Noctalia

> При первом входе в систему экран будет пустым. Нажмите SUPER + SHIFT + C для выхода.
> Войдите снова, и с этого момента Noctalia будет запускаться автоматически.

<img align="center" width="80%" src="img/MayankOS-Floating.png" />

</div>

<details>
<summary><strong>📸 Больше скриншотов</strong></summary>

### Темы Waybar

<img align="center" width="80%" src="img/demo-img2.png" />

<img align="center" width="80%" src="img/demo-img3.png" />

### Интеграция оболочки Noctalia

<img align="center" width="80%" src="img/MayankOS-noctalia-panel.png" />

<img align="center" width="80%" src="img/MayankOS-noctalia-app.png" />

<img align="center" width="80%" src="img/MayankOS-noctalia-settings.png" />

<img align="center" width="80%" src="img/MayankOS-noctalia-weather.png" />

### Дополнительные функции

<img align="center" width="80%" src="img/MayankOS-keybind-search.png" />

<img align="center" width="80%" src="img/MayankOS-nivim-emacs.png" />

### Поддержка оборудования (MSI Modern 14 C7M)

<img align="center" width="80%" src="img/MayankOS-MSI-Modern14.png" />

</details>

<div align="center">

### Шпаргалки и руководства

- Руководство Nix для начинающих: [English](cheatsheets/nix-beginner-guide.md) |
  [Español](cheatsheets/nix-beginner-guide.es.md)
- Руководство по настройке Hyprland:
  [English](cheatsheets/hyprland-customization-guide.md) |
  [Español](cheatsheets/hyprland-customization-guide.es.md)
- Руководство по VLSI и проектированию оборудования: [English](cheatsheets/vlsi-guide.md) | [Español](cheatsheets/vlsi-guide.es.md)

#### 🍖 Требования

- Вы должны использовать NixOS версии 24.05+.
- Ожидается, что папка `mayankos` (этот репозиторий) находится в вашем домашнем каталоге.
- NixOS должна быть установлена с использованием раздела **GPT** и загрузкой через **UEFI**.
- ** Требуется раздел /boot минимум 500 МБ. **
- Поддерживается Systemd-boot.
- Информацию по GRUB вам придется искать в интернете самостоятельно. ☺️
- Ручное редактирование файлов, специфичных для вашего хоста.
- Хост — это конкретный компьютер, на который вы устанавливаете систему.

#### 🎹 Pipewire и управление меню уведомлений

- Мы используем новейшее и лучшее аудиорешение для Linux. Кроме того, в центре уведомлений на верхней панели доступны элементы управления мультимедиа и громкостью.

#### 🏇 Оптимизированный рабочий процесс и расширенное управление окнами

- **Поддержка Hyprland**: Тайлинговый оконный менеджер по умолчанию для большей элегантности и эффективности.
- **Поддержка Niri**: Теперь включает полную поддержку Niri, композитора Wayland с прокруткой и тайлингом. Включите его через `niriEnable` в вашем `variables.nix`.
- **KDE Plasma (опционально)**: Доступна поддержка KDE Plasma 6, но она отключена по умолчанию.
- Здесь нет массивного проекта NeoVIM; используется `nixvim` для невероятной настройки NeoVIM с уже добавленной поддержкой языков.

#### 🖥️ Мультихост и конфигурация пользователя

- Вы можете определить отдельные настройки для разных хост-машин и пользователей.
- Легко указывайте дополнительные пакеты для ваших пользователей в файле `modules/core/user.nix`.
- Понятная структура файлов и простая, но всеобъемлющая конфигурация.

#### 👼 Невероятное сообщество, ориентированное на поддержку

- Идея этого проекта заключается в том, чтобы сделать NixOS доступным пространством.
- NixOS — это действительно отличное сообщество, частью которого вам захочется стать.
- Многие терпеливые люди, которые рады потратить свое свободное время, чтобы помочь вам, используют эту конфигурацию.
- Не стесняйтесь обращаться в Discord за любой помощью.

#### 📦 Как устанавливать пакеты?

- Вы можете искать названия пакетов или доступные опции на страницах [Nix Packages](https://search.nixos.org/packages?) и [Options](https://search.nixos.org/options?), которые упрощают настройку.
- Для добавления пакетов есть разделы в `modules/core/packages.nix` и `modules/core/user.nix`. Один для программ, доступных во всей системе, а другой только для вашей пользовательской среды.

#### 🐧 Переключение сред рабочего стола

Поддерживается несколько сред:
- **Hyprland**: Включено по умолчанию.
- **Niri**: Включите его, установив `niriEnable = true;` в `variables.nix` вашего хоста.
- **KDE Plasma**: Чтобы включить KDE Plasma, перейдите в `modules/core/xserver.nix` и раскомментируйте строку `services.desktopManager.plasma6.enable = true;` и соответствующий блок `environment.systemPackages`.

#### 🙋 Есть проблемы или вопросы?

- Пожалуйста, не стесняйтесь создавать Issue в репозитории. Помечайте запросы на новые функции заголовком, начинающимся с [feature request], спасибо!
- Свяжитесь с нами также в [Discord](https://discord.gg/XhZmNTnhtp) для потенциально более быстрого ответа.

# Горячие клавиши Hyprland

Ниже приведены горячие клавиши для Hyprland, отформатированные для удобства. В правом столбце показаны клавиши, специфичные для **оболочки Noctalia** (доступны только при `barChoice = "noctalia"`).

<table>
<tr>
<td width="50%">

## Стандартные горячие клавиши

### Запуск приложений

- `$modifier + Return` → Запустить `terminal`
- `$modifier + Tab` → Переключить `Quickshell Overview` (обзор рабочих областей с предварительным просмотром)
- `$modifier + K` → Список горячих клавиш
- `$modifier + Shift + W` → Открыть `web-search`
- `$modifier + Alt + W` → Открыть `wallsetter`
- `$modifier + Shift + N` → Запустить `swaync-client -rs`
- `$modifier + W` → Запустить `Web Browser`
- `$modifier + Y` → Открыть `kitty` с `yazi`
- `$modifier + E` → Открыть `emopicker9000`
- `$modifier + S` → Сделать скриншот
- `$modifier + Shift + D` → Открыть `Discord`
- `$modifier + O` → Запустить `OBS Studio`
- `$modifier + Alt + C` → Выбор цвета (Color Picker)
- `$modifier + G` → Открыть `GIMP`
- `$modifier + T` → Переключить терминал с `pypr`
- `$modifier + Alt + M` → Открыть `pavucontrol`

### Управление окнами

- `$modifier + Q` → Закрыть активное окно
- `$modifier + P` → Переключить псевдо-тайлинг
- `$modifier + Shift + I` → Переключить режим разделения
- `$modifier + F` → Переключить полноэкранный режим
- `$modifier + Shift + F` → Переключить плавающий режим
- `$modifier + Alt + F` → Сделать все окна плавающими
- `$modifier + Shift + C` → Выйти из Hyprland

### Перемещение окон

- `$modifier + Shift + ← / → / ↑ / ↓` → Переместить влево/вправо/вверх/вниз
- `$modifier + Shift + H / L / K / J` → Переместить влево/вправо/вверх/вниз
- `$modifier + Alt + ← / → / ↑ / ↓` → Поменять местами влево/вправо/вверх/вниз

### Перемещение фокуса

- `$modifier + ← / → / ↑ / ↓` → Переместить фокус влево/вправо/вверх/вниз
- `$modifier + H / L / K / J` → Переместить фокус влево/вправо/вверх/вниз

### Рабочие области

- `$modifier + 1-10` → Перейти на рабочую область 1-10
- `$modifier + Shift + Space` → Переместить окно в специальную рабочую область
- `$modifier + Space` → Переключить специальную рабочую область
- `$modifier + Shift + 1-10` → Переместить окно на рабочую область 1-10
- `$modifier + Control + → / ←` → Переключить рабочую область вперед/назад

### Циклическое переключение окон

- `Alt + Tab` → Перейти к следующему окну / Вывести активное на передний план

</td>
<td width="50%">

## 🎨 Горячие клавиши оболочки Noctalia

_Доступны при `barChoice = "noctalia"` в `variables.nix`_

- `$modifier + D` → Переключить лаунчер
- `$modifier + Shift + Return` → Переключить лаунчер
- `$modifier + M` → Меню уведомлений
- `$modifier + V` → Менеджер буфера обмена
- `$modifier + Alt + P` → Панель настроек
- `$modifier + Shift + ,` → Панель настроек
- `$modifier + Alt + L` → Заблокировать экран
- `$modifier + Shift + Y` → Менеджер обоев
- `$modifier + X` → Меню питания
- `$modifier + C` → Центр управления
- `$modifier + Ctrl + R` → Запись экрана

### Лаунчер Rofi (режим Waybar)

_Доступен при `barChoice = "waybar"` в `variables.nix`_

- `$modifier + D` → Запустить Rofi Launcher
- `$modifier + Shift + Return` → Запустить Rofi Launcher

### Другие функции

- `$modifier + Shift + Return` (Waybar) → Лаунчер приложений
- `$modifier + V` (Waybar) → История буфера обмена через `cliphist`

</td>
</tr>
</table>

## Установка:

> **⚠️ ВАЖНО:** Эти методы установки предназначены ТОЛЬКО ДЛЯ **НОВЫХ УСТАНОВОК**. Если у вас уже установлена MayankOS и вы хотите обновиться до v2.4, см. [Инструкции по обновлению](#upgrading-from-mayankos-23-to-24) ниже. Примечание: Возникла проблема со скриптом обновления. Он был удален до исправления.

<details>
<summary><strong> ⬇️ Установка с помощью скрипта (ТОЛЬКО ДЛЯ НОВЫХ УСТАНОВОК)</strong></summary>

### 📜 Скрипт:

Это самый простой и рекомендуемый способ начать для **новых установок**. Скрипт не предназначен для изменения всех опций во flake или помощи в установке дополнительных пакетов. Он нужен просто для того, чтобы вы могли установить мою конфигурацию с минимальными шансами на поломку, а затем настраивать ее по своему вкусу!

> **⚠️ ПРЕДУПРЕЖДЕНИЕ:** Этот скрипт полностью заменит любой существующий каталог ~/mayankos. НЕ используйте его, если у вас уже установлена и настроена MayankOS.

Просто скопируйте это и запустите:

```bash
nix-shell -p git curl pciutils
```

Затем:

```bash
sh <(curl -L https://raw.githubusercontent.com/techanand8/mayankos/main/install-mayankos.sh)
```

#### После завершения установки ваша среда, скорее всего, будет выглядеть сломанной. Просто перезагрузитесь, и вы увидите экран входа в систему.

</details>

<details>
<summary><strong> 🦽 Процесс ручной установки:  </strong></summary>

1. Запустите эту команду, чтобы убедиться, что Git и Vim установлены:

```bash
nix-shell -p git vim
```

2. Клонируйте этот репозиторий и войдите в него:

```bash
cd && git clone https://github.com/techanand8/mayankos.git ~/mayankos
cd ~/mayankos
```

3. Создайте папку хоста для вашей машины (машин) следующим образом:

```bash
cp -r hosts/default hosts/<ваш-желаемый-hostname>
```

4. Сгенерируйте конфигурацию оборудования:

```bash
nixos-generate-config --show-hardware-config > hosts/<ваш-желаемый-hostname>/hardware.nix
```

5. Отредактируйте `hosts/<ваш-желаемый-hostname>/variables.nix` и `flake.nix` в соответствии с вашим именем хоста и профилем.

6. Установите flake (замените `profile` на `intel`, `nvidia`, `nvidia-laptop`, `amd`, `amd-nvidia-hybrid` или `vm`):

```bash
sudo nixos-rebuild switch --flake .#profile
```

Теперь, когда вы захотите пересобрать конфигурацию, вы можете использовать команду `mcli rebuild` или алиас `fr`.

</details>

### Особые благодарности:

Спасибо за вашу помощь

- KoolDots https://github.com/LinuxBeginnings
- JakKoolit https://github.com/Jakoolit
- Justaguylinux https://codeberg.org/Justaguylinux
- Jerry Starke https://github.com/JerrySM64

## Надеюсь, вам понравится!





## ⚡ Professional VLSI & Hardware Capabilities

This environment is built to be a powerhouse for hardware engineering. You don't just get tools; you get a complete, integrated workflow.

### 🚀 What You Can Do
- **SoC & CPU Design:** Design complex RISC-V or ARM-based SoCs from scratch.
- **Advanced Verification (DV):** Use **slang**, **morty**, and **cocotb** to ensure your designs are bug-free with industrial-grade precision.
- **Full RTL-to-GDSII:** Go from code to a physical chip layout using **LibreLane** and **OpenROAD** (already integrated via advanced flakes).
- **Analog & Mixed-Signal:** Perform high-fidelity circuit simulations with **Ngspice** and **Xyce**, and design layouts with **Magic-VLSI**.
- **FPGA Prototyping:** Flash your designs to real hardware like Lattice iCE40 or ECP5 using `nextpnr` and `openfpgaloader`.
- **Embedded Software:** Develop firmware for your custom silicon with built-in RISC-V and ARM toolchains (`gcc-arm-embedded`, `spike`, `qemu`).
- **PCB Engineering:** Create professional multi-layer PCBs with **KiCad**.

### 🛠️ Advanced EDA & nix-eda
We have already integrated **nix-eda** and specialized flakes (like **LibreLane**) directly into the system. This means you have access to tools that are usually hard to install on standard Linux.
- To explore more OSD (Open Source Design) tools, you can use the `nix-shell -p` command with `inputs.nix-eda.packages.${pkgs.stdenv.hostPlatform.system}.<package-name>` or simply check our pre-configured `packages.nix`.

### ⌨️ Keybindings & Desktop Management
MayankOS offers three world-class environments. Use **Mod (Super/Windows key)** for most shortcuts:

#### **Hyprland & Niri (Common Binds)**
- **Mod + Return:** Open Terminal (Ghostty/Kitty)
- **Mod + D / Space:** App Launcher
- **Mod + Q:** Close Window
- **Mod + E / T:** File Manager (Thunar)
- **Mod + B / W:** Web Browser
- **Mod + 1-9:** Switch Workspaces
- **Mod + Shift + Q:** Session/Power Menu
- **Mod + Alt + K:** Show All Keybinds (Searchable)

#### **How to Toggle Environments**
By default, **KDE Plasma**, **Hyprland**, and **Niri** are all enabled for your convenience. If you want to disable any to save resources:
- **KDE Plasma:** In `modules/core/xserver.nix`, set `services.desktopManager.plasma6.enable = false;`.
- **Hyprland:** In `modules/core/packages.nix`, set `programs.hyprland.enable = false;`.
- **Niri:** In `hosts/<your-host>/variables.nix`, set `niriEnable = false;`.

### 📘 Humble Installation & Learning
*We sincerely apologize for any previous mistakes or repetitive language. We respect the community and aim only to provide a helpful tool.*

1. **Install:** `git clone https://github.com/techanand8/mayankos.git ~/mayankos` then `./install-mayankos.sh`.

⚠️ Важный момент, который стоит запомнить:
Когда вы запускаете скрипт в первый раз на чистой установке NixOS, вам нужно убедиться, что git и pciutils доступны. Если их нет, скрипт сообщит вам об этом, но вы можете быстро получить их, выполнив команду:

```bash
nix-shell -p git pciutils
```
Затем запустите установщик:

```bash
sh ./install-mayankos.sh
```

Вердикт: Скрипт надежен. Он точно соответствует структуре вашего репозитория и автоматически обрабатывает «сложные моменты» (такие как обновление flake.nix и variables.nix). Можно смело приступать! 🚀

2. **Rebuild:** Any time you change a setting, run `mcli rebuild` or `sudo nixos-rebuild boot --flake ~/mayankos/#<profile>`.