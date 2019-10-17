package Paws::API::Builder::Kinesis {
  use Moo;

  extends 'Paws::API::Builder::json';

  # Kinesis is using exception shapes in it's responses
  sub build_exception_shapes {
      return {};
  }
}

1;
