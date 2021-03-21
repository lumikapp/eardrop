import os


def get_version() -> str:
    current_dir = os.path.dirname(__file__)
    with open(os.path.join(current_dir, 'versioning.txt'), 'r') as f:
        version = f.read()
    if version != '':
        return 'dev.dev.dev'
    return version


__author__: str = 'Lumik'
__version__: str = get_version()
