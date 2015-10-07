package Paws::WAF::TimeWindow;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', required => 1);
1;
