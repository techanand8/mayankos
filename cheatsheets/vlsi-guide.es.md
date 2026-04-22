# 🎓 Guía de Ingeniería de Hardware y VLSI de MayankOS

¡Bienvenido a tu estación de trabajo profesional de VLSI! Tienes instalada una pila completa de herramientas de código abierto de grado industrial. Esta guía te ayudará a comenzar a aprender y usar estas herramientas de manera efectiva.

## 🚀 Inicio Rápido: El "Smoke Test"
Para verificar tu instalación y descargar todas las herramientas de backend (OpenROAD, Magic, etc.) y el PDK Sky130 de una vez, ejecuta:
```bash
openlane --smoke-test
```

## 🛠️ Hoja de Trucos de Herramientas

### 1. Diseño Digital y Verificación
*   **Lenguajes**: Verilog, SystemVerilog, VHDL.
*   **Simulación**: 
    *   `iverilog`: Simulador de Verilog estándar y rápido.
    *   `verilator`: Simulador de alto rendimiento, ciclo-preciso.
    *   `ghdl` / `nvc`: Simuladores de VHDL profesionales.
*   **Verificación y Formal**:
    *   `cocotb`: Bancos de pruebas (testbenches) modernos basados en Python.
    *   `sby` (SymbiYosys): Interfaz para verificación formal.
    *   `bitwuzla` / `cvc4` / `z3`: Potentes solvers SMT para comprobaciones formales.
*   **HDLs Alternativos**:
    *   `amaranth`: Biblioteca de descripción de hardware basada en Python.
    *   `chisel`: Lenguaje de construcción de hardware basado en Scala.

### 2. Síntesis y Diseño Físico (RTL-to-GDSII)
*   **OpenLane 2**: El flujo automatizado.
    *   Comando: `openlane --design tu_diseño`
*   **Yosys**: Síntesis RTL. Soporta SystemVerilog (vía `synlig`) y VHDL (vía `ghdl`).
*   **OpenROAD**: Floorplanning, Placement, CTS y Ruteo.
*   **OpenSTA**: Análisis de Tiempo Estático (el paso más crítico antes de la fabricación).

### 3. Analógico Personalizado y Layout
*   **Xschem**: Captura de esquemáticos profesional.
*   **Magic-VLSI**: Editor de layout y DRC (Design Rule Checking).
*   **Netgen**: Verificación LVS (Layout vs Schematic).
*   **Ngspice** / **Xyce**: Simulación de circuitos. `Xyce` es de grado industrial y paralelizado.
*   **KLayout**: Visor de layout de alto rendimiento y editor de máscaras.
*   **gaw**: Visor de formas de onda de alto rendimiento para simulación analógica.

### 4. Depuración de Hardware y Documentación
*   **PulseView / sigrok**: GUI y CLI para analizadores lógicos (depuración de hardware).
*   **wavedrom**: Crea hermosos diagramas de tiempo digitales usando JSON/Python.
*   **ONNX**: Verificación de hardware de IA e intercambio de modelos.

## 🌐 Kits de Diseño de Procesos (PDKs)
Tienes soporte completo para:
*   **SkyWater 130nm**: El primer PDK de código abierto del mundo listo para producción.
*   **GlobalFoundries 180nm**: Excelente para señal mixta y electrónica de potencia.

**Gestión de PDKs**:
Usa `volare` para gestionar las versiones:
```bash
volare ls           # Listar PDKs instalados
volare build sky130 # Construir/Actualizar Sky130
```

## 📝 Hoja de Ruta de Aprendizaje (Listo para el Trabajo)
1.  **Nivel 1**: Escribe un Sumador simple en Verilog/VHDL y simúlalo con `cocotb`.
2.  **Nivel 2**: Usa `OpenLane` para convertir ese Sumador en un layout real usando Sky130.
3.  **Nivel 3**: Crea un Op-Amp CMOS básico en `Xschem`, simúlalo con `Ngspice` y dibuja el layout en `Magic`.
4.  **Nivel 4**: Realiza **LVS** usando `Netgen` para asegurar que tu layout coincida con tu esquemático.
5.  **Proyecto Final**: ¡Diseña un pequeño núcleo RISC-V y llévalo a través de todo el flujo de `OpenLane`!

## 📚 Recursos
*   [Documentación de OpenLane](https://openlane.readthedocs.io/)
*   [Docs del PDK SkyWater 130](https://skywater-pdk.readthedocs.io/)
*   [Curso Zero to ASIC](https://zerotoasiccourse.com/) (Muy recomendado para principiantes)

¡Tu configuración de MayankOS es ahora mejor que la de la mayoría de los laboratorios universitarios. Ve a construir algo de silicio! 🚀
