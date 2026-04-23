{pkgs, ...}:
pkgs.writeShellScriptBin "install-hammer" ''
  echo "Setting up Hammer-VLSI environment..."
  
  # Create a virtualenv in the user's home to keep the system clean
  mkdir -p ~/.local/share/hammer-vlsi
  python3 -m venv ~/.local/share/hammer-vlsi/venv
  
  # Activate and install
  source ~/.local/share/hammer-vlsi/venv/bin/activate
  pip install --upgrade pip
  
  # Install hammer-vlsi and common dependencies
  # Note: Hammer is often used as a source-based tool for research
  # We'll install the stable version from PyPI first
  pip install hammer-vlsi
  
  echo "-------------------------------------------------------"
  echo "Hammer-VLSI installed successfully!"
  echo "To use it, run: source ~/.local/share/hammer-vlsi/venv/bin/activate"
  echo "Then you can run commands like: hammer-vlsi --help"
  echo ""
  echo "NOTE: Hammer is highly plugin-based. Open-source tech plugins"
  echo "(Sky130, ASAP7) are built-in for v1.0.0+."
  echo "-------------------------------------------------------"
''
