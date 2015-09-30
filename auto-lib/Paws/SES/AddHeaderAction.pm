package Paws::SES::AddHeaderAction;
  use Moose;
  has HeaderName => (is => 'ro', isa => 'Str', required => 1);
  has HeaderValue => (is => 'ro', isa => 'Str', required => 1);
1;
