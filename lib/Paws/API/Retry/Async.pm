package Paws::API::Retry::Async;
  use Moose;
  extends 'Paws::API::Retry';
  

  override 'backoff' => sub {
    # some async wait magic here
  };
  
  __PACKAGE__->meta->make_immutable;
  
1;
