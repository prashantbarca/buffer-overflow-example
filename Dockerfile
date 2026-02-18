FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

# Enable 32-bit architecture
RUN dpkg --add-architecture i386 && \
    apt update && \
    apt install -y \
        gcc-multilib \
        gdb \
        make \
        libc6:i386 \
        libc6-dev-i386 \
        python3 \
        vim \
        nano \
        file \
        sudo && \
    apt clean

# Create non-root user
RUN useradd -m -s /bin/bash student && \
    echo "student ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Create working directory
WORKDIR /home/student/lab

# Copy source files
COPY src/ /home/student/lab/
COPY entrypoint.sh /entrypoint.sh

RUN chown -R student:student /home/student/lab && \
    chmod +x /entrypoint.sh

USER student

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/bash"]