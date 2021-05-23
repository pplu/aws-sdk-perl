package Paws::API::Builder::LexRuntimeV2 {
  use Moose;

  extends 'Paws::API::Builder::restjson';

  # LexRuntimeV2 is using exception shapes in it's responses
  override build_exception_shapes => sub {
    return {}
  }
}

1;
