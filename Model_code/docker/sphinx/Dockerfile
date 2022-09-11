ARG SPHINX_VERSION
FROM sphinxdoc/sphinx:${SPHINX_VERSION}

ENV SPHINX_OPTS=

RUN useradd -ms /bin/bash sphinxuser && \
    mkdir /Model_code && \
    chown -R sphinxuser /Model_code && \
    pip install sphinx_rtd_theme
USER sphinxuser

WORKDIR /Model_code/docs

CMD make html SPHINXOPTS:=$SPHINX_OPTS
