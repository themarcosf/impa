# exit on error, unset vars, pipe failures
set -euo pipefail

# set PYTHONPATH to include src directory
export PYTHONPATH=src

# usage instructions for the script
show_help() {
    cat << EOF
Usage: ./run.sh [OPTIONS]

OPTIONS:
    --help              Show this help message and exit
    --run               Start the application engine
    --test              Run unit tests from the library package
    --cov               Run unit tests with coverage reporting
EOF
}

# default action when no arguments are given
if [ $# -eq 0 ]; then
    echo "Error: At least one argument is required."
    show_help
    exit 1
fi

# parse command line arguments
case $1 in
    --help)
        show_help
        exit 0
    ;;

    --run)
        echo "To be implemented..."
    ;;

    --test)
        echo "To be implemented..."
    ;;

    --cov)
        echo "To be implemented..."
    ;;

    *)
        echo "Unknown option: $1"
        show_help
        exit 1
    ;;
esac