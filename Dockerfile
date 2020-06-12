FROM krisnova/falco:latest
##
# Kris Nova Crazy Docker Hackery Here
VOLUME /app/falco/build falco/build

ADD falco /app/falco
ADD sysdig /app/sysdig
ADD compile /app/compile
ADD falco/scripts/falco-driver-loader /app/falco-driver-loader
RUN cd /app && ./compile
ENTRYPOINT ["/app/falco-driver-loader", "bpf", "&&", "falco"]
