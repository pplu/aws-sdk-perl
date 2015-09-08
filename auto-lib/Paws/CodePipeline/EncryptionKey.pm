package Paws::CodePipeline::EncryptionKey;
  use Moose;
  has id => (is => 'ro', isa => 'Str', required => 1);
  has type => (is => 'ro', isa => 'Str', required => 1);
1;
