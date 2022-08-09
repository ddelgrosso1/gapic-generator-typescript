load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def gapic_generator_typescript_repositories():
  maybe(
    http_archive,
    name = "build_bazel_rules_nodejs",
    sha256 = "c911b5bd8aee8b0498cc387cacdb5f917098ce477fb4182db07b0ef8a9e045c0",
    urls = ["https://github.com/bazelbuild/rules_nodejs/releases/download/4.7.1/rules_nodejs-4.7.1.tar.gz"],
  )

  maybe(
      http_archive,
      name = "rules_proto",
      sha256 = "602e7161d9195e50246177e7c55b2f39950a9cf7366f74ed5f22fd45750cd208",
      strip_prefix = "rules_proto-97d8af4dc474595af3900dd85cb3a29ad28cc313",
      urls = [
          "https://mirror.bazel.build/github.com/bazelbuild/rules_proto/archive/97d8af4dc474595af3900dd85cb3a29ad28cc313.tar.gz",
          "https://github.com/bazelbuild/rules_proto/archive/97d8af4dc474595af3900dd85cb3a29ad28cc313.tar.gz",
      ],
  )

  _rules_gapic_version = "0.9.0"
  maybe(
      http_archive,
      name = "rules_gapic",
      strip_prefix = "rules_gapic-%s" % _rules_gapic_version,
      urls = ["https://github.com/googleapis/rules_gapic/archive/v%s.tar.gz" % _rules_gapic_version],
  )

  maybe(
      http_archive,
      name = "com_google_protobuf",
      sha256 = "d7d204a59fd0d2d2387bd362c2155289d5060f32122c4d1d922041b61191d522",
      strip_prefix = "protobuf-3.21.5",
      urls = ["https://github.com/protocolbuffers/protobuf/archive/v3.21.5.tar.gz"],
  )
