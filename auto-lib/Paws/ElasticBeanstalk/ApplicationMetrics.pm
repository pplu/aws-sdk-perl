package Paws::ElasticBeanstalk::ApplicationMetrics;
  use Moose;
  has Duration => (is => 'ro', isa => 'Int');
  has Latency => (is => 'ro', isa => 'Paws::ElasticBeanstalk::Latency');
  has RequestCount => (is => 'ro', isa => 'Int');
  has StatusCodes => (is => 'ro', isa => 'Paws::ElasticBeanstalk::StatusCodes');
1;
