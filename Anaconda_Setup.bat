@echo off

set "CONDA_PATH=%USERPROFILE%\Anaconda3"
chcp 65001

call "%CONDA_PATH%\Scripts\activate.bat" base &^
conda config --set channel_priority strict &^
conda update --all -y &^
conda config --get channels &^
conda deactivate &^
conda update -n base -c conda-forge conda &^
echo. &^
echo All configuration and updates are complete. &^
pause