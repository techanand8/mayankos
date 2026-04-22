# 🎓 MayankOS VLSI & Hardware Engineering Guide

Welcome to your professional VLSI workstation! You have a complete, industrial-grade open-source stack installed. This guide will help you start learning and using these tools effectively.

## 🚀 Quick Start: The "Smoke Test"
To verify your installation and download all backend tools (OpenROAD, Magic, etc.) and the Sky130 PDK at once, run:
```bash
openlane --smoke-test
```

## 🛠️ Tool Cheat Sheet

### 1. Digital Design & Verification
*   **Languages**: Verilog, SystemVerilog, VHDL.
*   **Simulation**: 
    *   `iverilog`: Fast, standard Verilog simulator.
    *   `verilator`: High-performance, cycle-accurate.
    *   `ghdl` / `nvc`: Professional VHDL simulators.
*   **Verification & Formal**:
    *   `cocotb`: Modern Python-based testbenches.
    *   `sby` (SymbiYosys): Front-end for formal verification.
    *   `bitwuzla` / `cvc4` / `z3`: Powerful SMT solvers for formal checks.
*   **Alternative HDLs**:
    *   `amaranth`: Python-based hardware description library.
    *   `chisel`: Scala-based hardware construction language.

### 2. Synthesis & Physical Design (RTL-to-GDSII)
*   **OpenLane 2**: The automated flow.
    *   Command: `openlane --design your_design`
*   **Yosys**: RTL Synthesis. Supports SystemVerilog (via `synlig`) and VHDL (via `ghdl`).
*   **OpenROAD**: Floorplanning, Placement, CTS, and Routing.
*   **OpenSTA**: Static Timing Analysis (the most critical step before fabrication).

### 3. Custom Analog & Layout
*   **Xschem**: Professional schematic capture.
*   **Magic-VLSI**: Layout editor and DRC (Design Rule Checking).
*   **Netgen**: LVS (Layout vs Schematic) verification.
*   **Ngspice** / **Xyce**: Circuit simulation. `Xyce` is industry-grade and parallelized.
*   **KLayout**: High-performance layout viewer and mask editor.
*   **gaw**: High-performance waveform viewer for analog simulation.

### 4. Hardware Debugging & Documentation
*   **PulseView / sigrok**: GUI and CLI for logic analyzers (hardware debugging).
*   **wavedrom**: Create beautiful digital timing diagrams using JSON/Python.
*   **ONNX**: AI hardware verification and model exchange.

## 🌐 Process Design Kits (PDKs)
You have full support for:
*   **SkyWater 130nm**: The world's first open-source, production-ready PDK.
*   **GlobalFoundries 180nm**: Excellent for mixed-signal and power electronics.

**PDK Management**:
Use `volare` to manage versions:
```bash
volare ls           # List installed PDKs
volare build sky130 # Build/Update Sky130
```

## 📝 Learning Roadmap (Job-Ready)
1.  **Level 1**: Write a simple Adder in Verilog/VHDL and simulate it with `cocotb`.
2.  **Level 2**: Use `OpenLane` to turn that Adder into a real layout using Sky130.
3.  **Level 3**: Create a basic CMOS Op-Amp in `Xschem`, simulate with `Ngspice`, and draw the layout in `Magic`.
4.  **Level 4**: Perform **LVS** using `Netgen` to ensure your layout matches your schematic.
5.  **Capstone**: Design a small RISC-V core and take it through the entire `OpenLane` flow!

## 📚 Resources
*   [OpenLane Documentation](https://openlane.readthedocs.io/)
*   [SkyWater 130 PDK Docs](https://skywater-pdk.readthedocs.io/)
*   [Zero to ASIC Course](https://zerotoasiccourse.com/) (Highly recommended for beginners)

Your MayankOS setup is now better than most university labs. Go build some silicon! 🚀
