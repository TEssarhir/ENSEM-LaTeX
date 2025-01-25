
# ENSEM-LaTeX

![LICENCE](https://img.shields.io/badge/License-MIT-g.svg)

## Overview

This repository contains custom LaTeX templates, styles, and configurations designed for creating professional documents specifically for academia *(in this case ENSEM School)*, reports, and presentations. It is equipped with modular packages and customizations to enhance productivity and maintain a consistent design.

## Repository Structure

- **`myreport.cls`**: A custom LaTeX class file for creating reports.
- **`mysci/`**: Contains `mysci.sty`, which provides scientific formatting and styling utilities.
- **`myfloat/`**: Contains `myfloat.sty` for custom float environments.
- **`mychap/`**: Contains `mychap.sty` for chapter-specific styles *(DEPRECATED : content encapsulated in `myreport.cls`)*.
- **`mypage/`**: Contains `mypage.sty` for page layout customizations *(DEPRECATED : content encapsulated in `myreport.cls`)*.
- **`mytitle/`**: Contains `mytitle.sty` for title page designs *(DEPRECATED, look at `myreport.cls` and uncomment specific command)*.
- **`mymath/`**: Contains `mymath.sty` for mathematical formatting.
- **`mycode/`**: Contains `mycode.sty` for code formatting.
- **`mycsv/`**: Contains `mycsv.sty` for importing and formatting CSV data.
- **`matlab/`**: Contains `matlab.sty` for integrating MATLAB code *(DEPRECATED : use `mycode.sty` instead with option `style=m`)*..
- **`Logos/`**: Contains logo assets (e.g., `ENSEM.svg`, `UL.svg`) for branding.

## Getting Started

1. Clone the repository:
   ```bash
   git clone <repository-url>
   ```
2. Copy the necessary `.sty` or `.cls` files into your LaTeX project directory. For .
3. Import the desired packages or classes in your LaTeX file:
   ```latex
   \documentclass{myreport}
   \usepackage{mysci}
   ```
   For ensem use :
   ```latex
   \documentclass[ensem,<language>]{myreport}
   ```
   Use french for example to have keywords in french

## Contributions

Contributions are welcome! If you have suggestions or improvements, please submit a pull request.

## License

This repository is distributed under the MIT License. See (`LICENSE`)[LICENCE.txt] for details.
