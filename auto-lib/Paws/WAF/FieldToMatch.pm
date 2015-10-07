package Paws::WAF::FieldToMatch;
  use Moose;
  has Data => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str', required => 1);
1;
