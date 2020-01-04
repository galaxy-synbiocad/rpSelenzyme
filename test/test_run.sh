#!/bin/sh

docker run -p 5000:5000 -e LD_LIBRARY_PATH='/opt/conda/bin/../lib' brsynth/selenzyme
sleep 30
python tool_rpSelenzyme.py -inputTar test_input.tar -outputTar test_output.tar -pathway_id rp_pathway -server_url http://0.0.0.0:5000/REST
docker kill test_rpExtractSink
docker rm test_rpExtractSink
