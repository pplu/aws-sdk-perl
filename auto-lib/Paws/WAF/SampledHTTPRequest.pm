package Paws::WAF::SampledHTTPRequest;
  use Moose;
  has Action => (is => 'ro', isa => 'Str');
  has Request => (is => 'ro', isa => 'Paws::WAF::HTTPRequest', required => 1);
  has Timestamp => (is => 'ro', isa => 'Str');
  has Weight => (is => 'ro', isa => 'Int', required => 1);
1;
