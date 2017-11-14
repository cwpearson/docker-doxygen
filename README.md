# docker-doxygen

    cd /path/to/source
    docker run --rm -v $(pwd):/data -it cwpearson/doxygen doxygen

## Makefiles

Consider adding the following to a makefile to use this to build docs

    docker_docs:
        docker run -it --rm -v `pwd`:/data cwpearson/doxygen  doxygen doxygen.config
        docker run -it --rm -v `readlink -f docs/latex`:/data cwpearson/doxygen make