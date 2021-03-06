FROM python:3.7-slim
#FROM python:3.8.2

WORKDIR /app

COPY src/pkg_core /app/pkg_core
COPY src/pkg_plugin_a /app/pkg_plugin_a
COPY src/pkg_plugin_b /app/pkg_plugin_b

RUN pip install /app/pkg_core/.
RUN pip install /app/pkg_plugin_a/.
RUN pip install /app/pkg_plugin_b/.

CMD [ "python", "-c", "from scatpack.core import main; main.run(3, 4)" ]
