package Paws::WAF::HTTPRequest;
  use Moose;
  has ClientIP => (is => 'ro', isa => 'Str');
  has Country => (is => 'ro', isa => 'Str');
  has Headers => (is => 'ro', isa => 'ArrayRef[Paws::WAF::HTTPHeader]');
  has HTTPVersion => (is => 'ro', isa => 'Str');
  has Method => (is => 'ro', isa => 'Str');
  has URI => (is => 'ro', isa => 'Str');
1;
