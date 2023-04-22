
python_version=$(python3 -c 'import sys; print(sys.version_info[0])')

if [ $python_version -lt 3 ] || [ $python_version -eq 3 -a $(python3 -c 'import sys; print(sys.version_info[1])') -lt 7 ]; then
    echo "Error: Python 3.7+ is required"
    exit 1
fi

pip install mobsfscan

mobsfscan --help
