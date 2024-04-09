FROM tensorflow/serving:2.0.0

COPY models /models
ENV MODEL_NAME=konohana
