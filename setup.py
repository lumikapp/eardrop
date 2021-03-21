import pathlib
from setuptools import find_packages, setup

import eyedrop

setup(
    name="eyedrop",
    version=eyedrop.__version__,
    long_description=f'{pathlib.Path(__file__).parent}/README.md',
    long_description_content_type="text/markdown",
    url="https://github.com/lumikapp/eyedrop/",
    author="Lumik Ltd.",
    author_email="open_source@lumik.app",
    license="MIT",
    classifiers=[
        "License :: OSI Approved :: MIT License",
        "Programming Language :: Python :: 3",
        "Programming Language :: Python :: 3.6",
        "Programming Language :: Python :: 3.7",
        "Programming Language :: Python :: 3.8",
        "Programming Language :: Python :: 3.9",
    ],
    packages=find_packages(exclude=("doc", "test")),
    include_package_data=True,
    install_requires=[],
)
