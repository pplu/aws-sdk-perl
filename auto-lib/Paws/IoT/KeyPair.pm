package Paws::IoT::KeyPair;
  use Moose;
  has PrivateKey => (is => 'ro', isa => 'Str');
  has PublicKey => (is => 'ro', isa => 'Str');
1;
