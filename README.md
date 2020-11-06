# gen_image_list_html
Image list HTML generation tool that can be used by drag and drop (for Windows)

## System requirements
* Windows 10 (20H2)
* rubyinstaller-devkit-2.7.2-1-x64.exe

## Install
1. Download "rubyinstaller-devkit-2.7.2-1-x64.exe" from https://rubyinstaller.org/downloads/
2. Execute it.
3. **Installation Destination and Optional Tasks** => Check them all
    - Add Ruby executables to your PATH
    - Associate .rb and .rbw files with this Ruby installation
    - Use UTF-8 as default external encoding
4. **Select Components** => Check them all
    - Ruby-2.7.2 base files
    - Ruby RI and HTML documentation
    - MSYS2 development toolchain 2020-10-06
5. Check it
    - Run 'ridk install' to set up MSYS2 and development toolchain. MSYS2 is required to install gem with C extionsions.
6. Opens terminal window automatically. In the window, press Enter key several times
7. Double Click "DragAndDrop_Ruby.reg"

## Usage
Drag a folder icon and drop to "gen_image_list_html", and then "image.html" was generated.

## Reference
- https://qiita.com/kono/items/e2dbb3b43f5f6204a62b
- https://tipszone.jp/20110806_drag_and_drop/
