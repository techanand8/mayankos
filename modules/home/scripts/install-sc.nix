{pkgs, ...}:
pkgs.writeShellScriptBin "install-sc" ''
  echo "Setting up SiliconCompiler environment..."
  
  # Create a virtualenv in the user's home to keep the system clean
  mkdir -p ~/.local/share/siliconcompiler
  python3 -m venv ~/.local/share/siliconcompiler/venv
  
  # Activate and install
  source ~/.local/share/siliconcompiler/venv/bin/activate
  pip install --upgrade pip
  pip install siliconcompiler
  
  echo "-------------------------------------------------------"
  echo "SiliconCompiler installed successfully!"
  echo "To use it, run: source ~/.local/share/siliconcompiler/venv/bin/activate"
  echo "Then you can run commands like: sc --help"
  echo "-------------------------------------------------------"
''
