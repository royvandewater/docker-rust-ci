FROM circleci/rust:1.40

RUN cargo install cargo2junit

CMD cargo test -- -Z unstable-options --format json | cargo2junit > results.xml

