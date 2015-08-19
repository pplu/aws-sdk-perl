package Paws::ElasticBeanstalk::StatusCodes {
  use Moose;
  has Status2xx => (is => 'ro', isa => 'Int');
  has Status3xx => (is => 'ro', isa => 'Int');
  has Status4xx => (is => 'ro', isa => 'Int');
  has Status5xx => (is => 'ro', isa => 'Int');
}
1;
