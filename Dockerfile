FROM tensorflow/tensorflow:2.5.0-gpu-jupyter

ENV TZ=Asia/Tokyo
ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /app

RUN git clone https://github.com/tanreinama/GPTSAN .
RUN pip install -U pip && pip install --no-cache-dir -r requirements.txt
