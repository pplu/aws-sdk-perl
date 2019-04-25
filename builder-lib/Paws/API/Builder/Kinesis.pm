package Paws::API::Builder::Kinesis {
  use Moose;

  extends 'Paws::API::Builder::json';

  # Kinesis is using exception shapes in it's responses
  override build_exception_shapes => sub {
    return {}
  }
}

1;
