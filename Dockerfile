FROM scratch

ADD bin/hugo_0.18.1_linux_386 /hugo_0.18.1_linux_386

ENTRYPOINT ["/hugo_0.18.1_linux_386"]