@echo off

set SCRIPTS=%~dp0

rem fontreg /copy|/move will process all font files in the current
rem working directory, so make sure we're the only font present.
mkdir %SCRIPTS%\monaco-font
copy %SCRIPTS%\monaco.ttf %SCRIPTS%\monaco-font
cd %SCRIPTS%\monaco-font
fontreg /copy
cd ..
rmdir /q /s %SCRIPTS%\monaco-font

rem vim:set ts=8 sw=4 sts=4 tw=78 et:
