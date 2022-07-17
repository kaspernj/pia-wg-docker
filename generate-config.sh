#!/bin/sh

docker run -it -v $(pwd)/configs:/configs pia-wg /bin/bash -c "cd pia-wg && source venv/bin/activate && python3 generate-config.py && cp PIA-*.conf /configs"
