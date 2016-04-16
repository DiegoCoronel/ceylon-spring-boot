FROM ceylon/ceylon

COPY modules/ ~/discovery
COPY build/ ~/discovery

CMD ["cd ~/discovery"]
CMD ceylon run --rep modules --rep dist/repo discovery/1.0.0
