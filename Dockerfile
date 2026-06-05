# Minimal HTTP app. The SAME image runs as docker OR firecracker — the runtime
# is chosen at deploy time in tabbify.toml. busybox httpd serves /www on :8080.
# An exec-form ENTRYPOINT is required by the Firecracker path.
FROM busybox:1.36
COPY index.html /www/index.html
EXPOSE 8080
ENTRYPOINT ["busybox", "httpd", "-f", "-v", "-p", "8080", "-h", "/www"]
