
[![GDS](../../actions/workflows/gds.yaml/badge.svg)](../../actions/workflows/gds.yaml)
[![DRC](../../actions/workflows/drc.yaml/badge.svg)](../../actions/workflows/drc.yaml)
[![LVS](../../actions/workflows/lvs.yaml/badge.svg)](../../actions/workflows/lvs.yaml)
[![DOCS](../../actions/workflows/docs.yaml/badge.svg)](../../actions/workflows/docs.yaml)

# Who
wulff

# Why

<explain why you made this module>

# How

<explain short how you made this module>


# What


| What            |        Cell/Name |
| :----              |  :----:       |
| Schematic       | design/LELO_EXFC_SKY130A/LELO_EXFC.sch |
| Layout          | design/LELO_EXFC_SKY130A/LELO_EXFC.mag |



# Signal interface


| Signal       | Direction | Domain  | Description                               |
| :---         | :---:     | :---:   | :---                                      |
| VDD_1V8      | Input     | VDD_1V8 | Main supply                               |
| VSS          | Input     | Ground  |                                           |
| PWRUP_1V8    | Input     | VDD_1V8 | Power up the circuit                      |


# Key parameters


| Parameter           | Min     | Typ             | Max     | Unit  |
| :---                | :---:   | :---:           | :---:   | :---: |
| Technology          |         | Skywater 130 nm |         |       |
| AVDD                | 1.7     | 1.8             | 1.9     | V     |
| Temperature         | -40     | 27              | 125     | C     |
