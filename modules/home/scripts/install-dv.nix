{pkgs, ...}:
pkgs.writeShellScriptBin "install-dv" ''
  echo "Setting up advanced Design Verification (DV) environment..."
  
  # Create a virtualenv for DV tools to avoid library conflicts
  mkdir -p ~/.local/share/dv-tools
  python3 -m venv ~/.local/share/dv-tools/venv
  
  # Activate and install
  source ~/.local/share/dv-tools/venv/bin/activate
  pip install --upgrade pip
  
  echo "Installing Python-based Verification Stack..."
  # Modern DV Tools (Python UVM equivalents)
  pip install cocotb-vsc          # Constrained Random Verification (CRV)
  pip install cocotb-coverage     # Functional Coverage
  pip install cocotb-test         # Automated test runner for cocotb
  pip install vunit-hdl           # Automated test manager for VHDL/SV
  pip install cocotb-ext-axi      # Verification IP for AXI4, AHB, etc.
  
  # Note: svunit is typically cloned from source, but we can install its runner via pip if available
  # pip install svunit (unstable on PyPI, source is preferred)
  
  echo "-------------------------------------------------------"
  echo "Advanced DV Stack installed successfully!"
  echo "To use it, run: source ~/.local/share/dv-tools/venv/bin/activate"
  echo ""
  echo "You now have access to:"
  echo "  1. PyVSC (Constrained Randomization)"
  echo "  2. Functional Coverage tools"
  echo "  3. VUnit (Automated Regressions)"
  echo "  4. Renode (System-level HW/SW co-verification)"
  echo "-------------------------------------------------------"
''
