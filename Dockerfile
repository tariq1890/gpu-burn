FROM nvcr.io/nvidia/cuda:12.6.2-devel-ubuntu22.04 AS builder

WORKDIR /build

COPY . /build/

RUN make

FROM nvcr.io/nvidia/cuda:12.6.2-runtime-ubuntu22.04

COPY --from=builder /build/gpu_burn /app/
COPY --from=builder /build/compare.ptx /app/

WORKDIR /app

ENTRYPOINT ["./gpu_burn"]

CMD [ "60" ]
