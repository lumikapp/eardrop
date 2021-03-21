def get_version() -> str:
    with open('versioning.txt', 'r') as f:
        version = f.read()
    if version != '':
        return 'dev.dev.dev'
    return version


__author__: str = 'Lumik'
__version__: str = get_version()
