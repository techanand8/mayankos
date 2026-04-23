[English](README.md) | [Español](README.es.md) | [हिन्दी](README.hi.md) | [भोजपुरी (बिहारी)](README.bh.md) | [ಕನ್ನಡ](README.kn.md) | [தமிழ்](README.ta.md) | [తెలుగు](README.te.md) | [संस्कृतम्](README.sa.md) | [Deutsch](README.de.md) | [日本語](README.ja.md) | [Русский](README.ru.md) | [বাংলা](README.bn.md) | [Français](README.fr.md) | [Português](README.pt.md) | [العربية (الكويت)](README.ar.md) | [繁體中文 (台灣)](README.zh_TW.md) | [Italiano (Svizzera)](README.it.md)
n**Nota: Por favor, desculpe qualquer erro linguístico nesta tradução; forneci-a no seu idioma para que possa compreender melhor a documentação e o projeto. Para precisão técnica, consulte as versões em inglês ou espanhol.**

**Nota: Por favor, desculpe quaisquer erros linguísticos nesta tradução; forneci-a no seu idioma para que possa compreender melhor a documentação e o projeto. Para precisão técnica, consulte as versões em inglês ou espanhol.**

<div align="center">

## MayankOS 🟰 Melhores Configurações ❄️ NixOS

\*\* Atualizado: 22 de abril de 2026

O MayankOS é uma maneira poderosa e elegante de reproduzir minha configuração do NixOS em qualquer sistema. Construído com a flexibilidade e inspiração do projeto **ZaneyOS**, ele fornece um ambiente altamente personalizado, incluindo papéis de parede, scripts, aplicativos e suporte a hardware otimizado.

## 🚀 Novos Recursos e Suporte a Hardware (v2.6.1)

Esta versão traz otimizações significativas e suporte para hardware moderno:

### 💻 MSI Modern 14 C7M e Série AMD 7000
- **Desempenho Otimizado AMD 7530U**: Utiliza totalmente `amd-pstate-epp` e `auto-cpufreq` para um equilíbrio perfeito entre potência e vida útil da bateria.
- **Gerenciamento de Saúde da Bateria**: Suporte nativo para **Limites de Bateria MSI** via `msi-ec`, protegendo sua bateria ao limitar o carregamento a 80% quando conectado.
- **Escalonamento de Energia Avançado**: Troca automática entre os modos `performance` e `powersave` com base no estado de energia.
- **Gráficos de Próxima Geração**: Suporte completo a `amdgpu` com aceleração de hardware VA-API, ROCm e ferramentas Vulkan pré-configuradas.

### 🎨 Diversas Experiências de Shell
Escolha sua experiência de desktop preferida configurando `barChoice` em `variables.nix`:
- **Noctalia**: Um shell moderno e rico em recursos com controles de sistema integrados.
- **Caelestia**: Uma alternativa elegante e leve.
- **DMS (DankMaterialShell)**: Um shell inspirado no Material Design para um visual moderno e elegante.
- **Waybar**: A barra de status clássica e altamente personalizável.

### 🔧 Melhorias no Sistema
- **Último Kernel Linux**: Agora rodando na linha do **kernel 7.x** para a melhor compatibilidade de hardware.
- **Suporte Niri Aprimorado**: Integração total para o compositor de tiling rolável Niri.
- **Virtualização Melhorada**: Suporte otimizado para VMware e outras plataformas de virtualização.

## 🤝 Relacionamento com ZaneyOS

O Este projeto é um orgulhoso descendente do lendário projeto [ZaneyOS](https://gitlab.com/Zaney/zaneyos.git). Embora compartilhe o mesmo espírito de tornar o NixOS acessível e bonito, o ele evoluiu para uma distribuição distinta com o seu próprio foco:

### 🌟 O que o torna diferente?
- **Foco em Hardware Moderno**: Ao contrário da abordagem mais geral do ZaneyOS, o MayankOS inclui otimizações profundas para a série **AMD Ryzen 7000** mais recente e **portáteis MSI** (incluindo gestão de saúde da bateria).
- **Ecossistema de Shell Expandido**: Fomos além do Waybar para incluir suporte total para **Noctalia**, **Caelestia e DMS**, oferecendo mais escolhas para o seu fluxo de trabalho de desktop.
- **Estratégia do Kernel Mais Recente**: Priorizamos o `linuxPackages_latest` (7.x+) para garantir que os recursos de hardware mais recentes funcionem imediatamente.
- **Opções de Compositor Expandidas**: Integramos suporte total para o **compositor de mosaico rolável Niri**, fornecendo uma alternativa moderna ao Hyprland para utilizadores que preferem um fluxo de trabalho de mosaico rolável.
- **Internacionalização Aprimorada**: Suporte para mais de 13 idiomas para levar a experiência NixOS a um público global.

Se está à procura da inspiração original, visite le [GitLab Oficial do ZaneyOS](https://gitlab.com/Zaney/zaneyos.git). O Este ambiente pega nessa base incrível e leva-a mais longe para utilizadores que precisam de suporte de hardware de ponta e de uma gama mais diversificada de shells de desktop.

## 🏗️ Instalação: Automática vs. Manual

São oferecidas duas formas principais de começar:
1. **Script Automático (Recomendado para Novos Usuários)**: Uma instalação rápida de um comando que cuida de tudo para você. Esta é a maneira mais rápida de obter uma área de trabalho funcional.
2. **Instalação Manual**: Para usuários que desejam controle total sobre cada aspecto de seu sistema. A instalação manual é melhor se você deseja personalizar suas ferramentas *antes* da sua primeira reconstrução.

## ⚡ Estação de trabalho profissional de engenharia VLSI e hardware

MayankOS foi projetado especificamente para ser uma estação de trabalho profissional de alto desempenho para **VLSI e Engenharia de Hardware**.

- **Por que é perfeito**: Ele vem pré-configurado com um conjunto abrangente de ferramentas para:
  - **Simulação HDL**: `ghdl`, `nvc`, `iverilog`, `verilator`, `gtkwave`, `surfer`, `fusesoc`, `surelog`.
  - **Síntese e Design Físico**: `yosys`, `magic-vlsi`, `netgen`, `klayout`, `openroad`, `xschem`, `gdsfactory`. (Pronto para OpenLane)
  - **Desenvolvimento de FPGA e Embarcados**: `nextpnr`, `icestorm`, `openfpgaloader`, `dfu-util`, `qemu`.
  - **LSPs e Toolkits**: `sv-lang`, `vhdl-ls`, `verible`, `veridian`, `svls`, `pyverilog`, `verilogae`, `volare`.
  - **PDKs**: Suporte total para **SkyWater 130** e **GF180MCU** via `volare`.
  - **Design de PCB e Esquemáticos**: `kicad`, `ngspice`, `xyce`, `doxygen`.
- **FPGA Prototyping:** Flash your designs to real hardware like Lattice iCE40 or ECP5 using `nextpnr` and `openfpgaloader`.
- **Embedded Software:** Develop firmware for your custom silicon with built-in RISC-V and ARM toolchains (`gcc-arm-embedded`, `spike`, `qemu`).
- **Como personalizar**: Se você NÃO precisar dessas ferramentas, pode simplesmente comentar ou remover o bloco `# --- VLSI & Hardware Engineering ---` em `modules/core/packages.nix` antes de executar o seu `nixos-rebuild`.
- **Pronto para o futuro**: Este é apenas o começo; mais ferramentas especializadas de VLSI e EDA estão planejadas para atualizações futuras para tornar esta a plataforma definitiva para designers de hardware.

## 🌐 Escolha e Personalização do Navegador Web

### Por que o Microsoft Edge?

Por padrão, o MayankOS agora usa o **Microsoft Edge**. Reconhecemos que a comunidade Linux tem fortes preferências por navegadores como Firefox, Zen ou Brave. No entanto, o Edge foi selecionado para esta estação de trabalho porque:
- **Compatibilidade**: Oferece excelente estabilidade com portais de documentação de hardware profissional e ferramentas EDA baseadas na web.
- **Desempenho**: Fornece manuseio eficiente de PDF e gerenciamento de memória para pesquisas técnicas pesadas.
- **Fluxo de Trabalho**: Alinha-se às necessidades específicas de engenharia desta estação de trabalho VLSI.

### Como Alterar seu Navegador Padrão

Se você preferir um navegador diferente, o MayankOS facilita a troca:
1. **Altere a Variável**: Abra o arquivo `variables.nix` do seu host (ex: `hosts/msi-modern14c7m/variables.nix`) e altere a linha `browser` para sua escolha (ex: `browser = "firefox";`).
2. **Verifique a Instalação**: Certifique-se de que seu navegador preferido esteja listado em `modules/core/packages.nix`. Se não estiver lá, basta adicionar o nome do pacote (ex: `librewolf`) à lista.
3. **Reconstruir**: Execute `mcli rebuild` ou seu comando de reconstrução específico (ex: `sudo nixos-rebuild switch --flake .#amd`) para aplicar a alteração.

Acreditamos na escolha e na liberdade. O MayankOS foi projetado para ser sua estação de trabalho pessoal — sinta-se à vontade para torná-lo seu!

 ## 🛠️ Guia de Configuração de Hardware Personalizado e Host

 1. **Criando um Novo Host**:

   - Copie a pasta `hosts/default` para uma nova pasta com o nome do seu computador (ex: `cp -r hosts/default hosts/meu-laptop`).
2. **Gerando sua Configuração de Hardware**:
   - Execute `nixos-generate-config --show-hardware-config > hosts/seu-hostname/hardware.nix` para detectar automaticamente seu hardware específico (discos, CPU, etc.).
3. **Selecionando seu Perfil**:
   - Abra `flake.nix` e defina a variável `profile` para corresponder ao seu hardware (opções: `amd`, `intel`, `nvidia`, `nvidia-laptop`, `amd-nvidia-hybrid` ou `vm`).
4. **Configurando Variáveis**:
   - Edite `hosts/seu-hostname/variables.nix` para definir a resolução da sua tela, shell preferido (`barChoice`) e outras configurações pessoais.
5. **Suporte para Outros Laptops**:
   - Se você tem um laptop especializado como um MSI, pode olhar em `hosts/msi-modern14c7m/default.nix` para exemplos de como adicionar módulos do kernel como `msi-ec`.
6. **Reconstrução Final**:
   - Execute `sudo nixos-rebuild switch --flake .#seu-perfil` para aplicar tudo.

## Nota Importante sobre o Noctalia

> Na primeira vez que você fizer login, a tela ficará em branco. SUPER + SHIFT + C para sair.
> Faça o login, o Noctalia iniciará a partir de então.

<img align="center" width="80%" src="img/MayankOS-Floating.png" />

</div>

<details>
<summary><strong>📸 Mais Capturas de Tela</strong></summary>

### Temas Waybar

<img align="center" width="80%" src="img/demo-img2.png" />

<img align="center" width="80%" src="img/demo-img3.png" />

### Integração Noctalia Shell

<img align="center" width="80%" src="img/MayankOS-noctalia-panel.png" />

<img align="center" width="80%" src="img/MayankOS-noctalia-app.png" />

<img align="center" width="80%" src="img/MayankOS-noctalia-settings.png" />

<img align="center" width="80%" src="img/MayankOS-noctalia-weather.png" />

### Recursos Adicionais

<img align="center" width="80%" src="img/MayankOS-keybind-search.png" />

<img align="center" width="80%" src="img/MayankOS-nivim-emacs.png" />

### Suporte a Hardware (MSI Modern 14 C7M)

<img align="center" width="80%" src="img/MayankOS-MSI-Modern14.png" />

</details>

<div align="center">

### Guias e Folhas de Atalhos

- Guia do Iniciante Nix: [English](cheatsheets/nix-beginner-guide.md) |
  [Español](cheatsheets/nix-beginner-guide.es.md)
- Guia de Personalização do Hyprland:
  [English](cheatsheets/hyprland-customization-guide.md) |
  [Español](cheatsheets/hyprland-customization-guide.es.md)
- Guia de Engenharia de Hardware e VLSI: [English](cheatsheets/vlsi-guide.md) | [Español](cheatsheets/vlsi-guide.es.md)

#### 🍖 Requisitos

- Você deve estar rodando o NixOS, versão 24.05+.
- A pasta `mayankos` (este repositório) deve estar no seu diretório pessoal.
- Você deve ter instalado o NixOS usando partição **GPT** com boot via **UEFI**.
- ** Necessário partição /boot com no mínimo 500MB. **
- O systemd-boot é o que é suportado.
- Para o GRUB, você terá que pesquisar na internet por um passo-a-passo. ☺️
- Edição manual dos seus arquivos específicos de host.
- O host é o computador específico onde você está instalando.

#### 🎹 Pipewire e Controles do Menu de Notificações

- Estamos usando a mais nova e melhor solução de áudio para Linux. Sem mencionar que você terá controles de mídia e volume no centro de notificações disponível na barra superior.

#### 🏇 Fluxo de Trabalho Otimizado e Gerenciamento Avançado de Janelas

- **Suporte ao Hyprland**: Gerenciador de janelas tiling padrão para maior elegância e eficiência.
- **Suporte ao Niri**: Agora inclui suporte total para o Niri, um compositor Wayland de tiling rolável. Ative-o via `niriEnable` em seu `variables.nix`.
- **KDE Plasma (Opcional)**: Suporte para KDE Plasma 6 está disponível, mas desativado por padrão.
- Nada de projeto NeoVIM massivo aqui, usando `nixvim` para uma configuração incrível do NeoVIM com suporte a linguagens já adicionado.

#### 🖥️ Multi Host e Configuração de Usuário

- Você pode definir configurações separadas para diferentes máquinas host e usuários.
- Especifique facilmente pacotes extras para seus usuários no arquivo `modules/core/user.nix`.
- Estrutura de arquivos fácil de entender e configuração simples, mas abrangente.

#### 👼 Uma Comunidade Incrível Focada em Suporte

- A ideia central do MayankOS é tornar o NixOS um espaço acessível.
- O NixOS é, na verdade, uma ótima comunidade da qual você vai querer fazer parte.
- Muitas pessoas pacientes e felizes em gastar seu tempo livre ajudando você estão usando o MayankOS.
- Sinta-se à vontade para entrar em contato no Discord para qualquer ajuda.

#### 📦 Como Instalar Pacotes?

- Você pode pesquisar nas páginas do [Nix Packages](https://search.nixos.org/packages?) e [Options](https://search.nixos.org/options?) pelo nome de um pacote ou se ele possui opções que cuidam dos obstáculos de configuração que você possa enfrentar.
- Para adicionar um pacote, existem seções para isso em `modules/core/packages.nix` e `modules/core/user.nix`. Uma é para programas disponíveis em todo o sistema e a outra apenas para o ambiente do seu usuário.

#### 🐧 Trocando Ambientes de Desktop

O MayankOS suporta múltiplos ambientes:
- **Hyprland**: Ativado por padrão.
- **Niri**: Ative configurando `niriEnable = true;` no `variables.nix` do seu host.
- **KDE Plasma**: Para ativar o KDE Plasma, vá em `modules/core/xserver.nix` e remova o comentário da linha `services.desktopManager.plasma6.enable = true;` e do bloco `environment.systemPackages` associado.

#### 🙋 Tendo Problemas / Dúvidas?

- Sinta-se à vontade para abrir um problema (issue) no repositório. Por favor, identifique solicitações de recursos com o título começando com [feature request], obrigado!
- Entre em contato conosco no [Discord](https://discord.gg/XhZmNTnhtp) também, para uma resposta potencialmente mais rápida.

# Atalhos do Hyprland

Abaixo estão os atalhos para o Hyprland, formatados para fácil referência. A coluna da direita mostra atalhos específicos para o **Noctalia Shell** (disponíveis apenas quando `barChoice = "noctalia"`).

<table>
<tr>
<td width="50%">

## Atalhos Padrão

### Lançamento de Aplicativos

- `$modifier + Return` → Iniciar `terminal`
- `$modifier + Tab` → Alternar `Quickshell Overview` (visão geral dos espaços de trabalho com pré-visualizações ao vivo)
- `$modifier + K` → Listar atalhos
- `$modifier + Shift + W` → Abrir `web-search`
- `$modifier + Alt + W` → Abrir `wallsetter`
- `$modifier + Shift + N` → Executar `swaync-client -rs`
- `$modifier + W` → Iniciar `Navegador Web`
- `$modifier + Y` → Abrir `kitty` com `yazi`
- `$modifier + E` → Abrir `emopicker9000`
- `$modifier + S` → Tirar um print
- `$modifier + Shift + D` → Abrir `Discord`
- `$modifier + O` → Iniciar `OBS Studio`
- `$modifier + Alt + C` → Seletor de Cores
- `$modifier + G` → Abrir `GIMP`
- `$modifier + T` → Alternar terminal com `pypr`
- `$modifier + Alt + M` → Abrir `pavucontrol`

### Gerenciamento de Janelas

- `$modifier + Q` → Fechar janela ativa
- `$modifier + P` → Alternar pseudo tiling
- `$modifier + Shift + I` → Alternar modo split
- `$modifier + F` → Alternar tela cheia
- `$modifier + Shift + F` → Alternar modo flutuante
- `$modifier + Alt + F` → Flutuar todas as janelas
- `$modifier + Shift + C` → Sair do Hyprland

### Movimento de Janelas

- `$modifier + Shift + ← / → / ↑ / ↓` → Mover para esquerda/direita/cima/baixo
- `$modifier + Shift + H / L / K / J` → Mover para esquerda/direita/cima/baixo
- `$modifier + Alt + ← / → / ↑ / ↓` → Trocar esquerda/direita/cima/baixo

### Movimento de Foco

- `$modifier + ← / → / ↑ / ↓` → Mover foco para esquerda/direita/cima/baixo
- `$modifier + H / L / K / J` → Mover foco para esquerda/direita/cima/baixo

### Espaços de Trabalho (Workspaces)

- `$modifier + 1-10` → Mudar para espaço de trabalho 1-10
- `$modifier + Shift + Space` → Mover janela para espaço de trabalho especial
- `$modifier + Space` → Alternar espaço de trabalho especial
- `$modifier + Shift + 1-10` → Mover janela para espaço de trabalho 1-10
- `$modifier + Control + → / ←` → Mudar espaço de trabalho para frente/trás

### Ciclo de Janelas

- `Alt + Tab` → Ciclar para a próxima janela / Trazer ativa para o topo

</td>
<td width="50%">

## 🎨 Atalhos do Noctalia Shell

_Disponível quando `barChoice = "noctalia"` em `variables.nix`_

- `$modifier + D` → Alternar Lançador
- `$modifier + Shift + Return` → Alternar Lançador
- `$modifier + M` → Menu de Notificações
- `$modifier + V` → Gerenciador de Área de Transferência
- `$modifier + Alt + P` → Painel de Configurações
- `$modifier + Shift + ,` → Painel de Configurações
- `$modifier + Alt + L` → Bloquear Tela
- `$modifier + Shift + Y` → Gerenciador de Papel de Parede
- `$modifier + X` → Menu de Energia
- `$modifier + C` → Centro de Controle
- `$modifier + Ctrl + R` → Gravador de Tela

### Lançador Rofi (Modo Waybar)

_Disponível quando `barChoice = "waybar"` em `variables.nix`_

- `$modifier + D` → Iniciar Lançador Rofi
- `$modifier + Shift + Return` → Iniciar Lançador Rofi

### Outros Recursos

- `$modifier + Shift + Return` (Waybar) → Lançador de Aplicativos
- `$modifier + V` (Waybar) → Histórico da área de transferência via `cliphist`

</td>
</tr>
</table>

## Instalação:

> **⚠️ IMPORTANTE:** Estes métodos de instalação são para **APENAS NOVAS INSTALAÇÕES**. Se você já tem o MayankOS instalado e quer atualizar para a v2.4, veja as [Instruções de Atualização](#upgrading-from-mayankos-23-to-24) abaixo. Nota: Há um problema com o script de atualização. Ele foi removido até que seja corrigido.

<details>
<summary><strong> ⬇️ Instalar com script (APENAS NOVAS INSTALAÇÕES)</strong></summary>

### 📜 Script:

Esta é a maneira mais fácil e recomendada de começar para **novas instalações**. O script não se destina a permitir que você altere todas as opções no flake ou ajude a instalar pacotes extras. Ele está aqui apenas para que você possa instalar minha configuração com as mínimas chances de erros e então ajustar como desejar!

> **⚠️ AVISO:** Este script substituirá completamente qualquer diretório ~/mayankos existente. NÃO use isso se você já tiver o MayankOS instalado e configurado.

Basta copiar isso e rodar:

```bash
nix-shell -p git curl pciutils
```

Então:

```bash
sh <(curl -L https://raw.githubusercontent.com/techanand8/mayankos/main/install-mayankos.sh)
```

#### Após a conclusão da instalação, seu ambiente provavelmente parecerá quebrado. Apenas reinicie e você verá a tela de login.

</details>

<details>
<summary><strong> 🦽 Processo de instalação manual:  </strong></summary>

1. Rode este comando para garantir que Git e Vim estejam instalados:

```bash
nix-shell -p git vim
```

2. Clone este repo e entre nele:

```bash
cd && git clone https://github.com/techanand8/mayankos.git ~/mayankos
cd ~/mayankos
```

3. Crie a pasta de host para sua(s) máquina(s) assim:

```bash
cp -r hosts/default hosts/<seu-hostname-desejado>
```

4. Gere sua configuração de hardware:

```bash
nixos-generate-config --show-hardware-config > hosts/<seu-hostname-desejado>/hardware.nix
```

5. Edite `hosts/<seu-hostname-desejado>/variables.nix` e `flake.nix` para corresponder ao seu hostname e perfil.

6. Instale o flake (substitua `profile` por `intel`, `nvidia`, `nvidia-laptop`, `amd`, `amd-nvidia-hybrid`, ou `vm`):

```bash
sudo nixos-rebuild switch --flake .#profile
```

Agora, quando você quiser reconstruir a configuração, você pode usar o comando `mcli rebuild` ou o alias `fr`.

</details>

### Reconhecimentos Especiais:

Obrigado por toda a sua ajuda

- KoolDots https://github.com/LinuxBeginnings
- JakKoolit https://github.com/Jakoolit
- Justaguylinux https://codeberg.org/Justaguylinux
- Jerry Starke https://github.com/JerrySM64

## Espero que aproveite!





## ⚡ Professional VLSI & Hardware Capabilities

This environment is built to be a powerhouse for hardware engineering. You don't just get tools; you get a complete, integrated workflow.

### 🚀 What You Can Do
- **SoC & CPU Design:** Design complex RISC-V or ARM-based SoCs from scratch.
- **Advanced Verification (DV):** Use **slang**, **morty**, and **cocotb** to ensure your designs are bug-free with industrial-grade precision.
- **Full RTL-to-GDSII:** Go from code to a physical chip layout using **LibreLane** and **OpenROAD** (already integrated via advanced flakes).
- **Analog & Mixed-Signal:** Perform high-fidelity circuit simulations with **Ngspice** and **Xyce**, and design layouts with **Magic-VLSI**.
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
2. **Rebuild:** Any time you change a setting, run `mcli rebuild` or `sudo nixos-rebuild boot --flake ~/mayankos/#<profile>`.