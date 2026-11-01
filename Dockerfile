FROM denoland/deno:2.1.4
WORKDIR /app
COPY . .
RUN deno cache main.ts
ENV PORT=10000
CMD ["run", "--allow-net", "--allow-env", "--allow-read", "--allow-write", "main.ts"]
