def get_version() -> str:
    try:
        with open('versioning.txt', 'r') as f:
            version = f.read()
    except FileNotFoundError:
        version = 'dev.dev.dev'
    return version


__author__: str = 'Lumik'
__version__: str = get_version()
