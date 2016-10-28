
package Paws::ElasticBeanstalk::DescribeInstancesHealthResult;
  use Moose;
  has InstanceHealthList => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::SingleInstanceHealth]');
  has NextToken => (is => 'ro', isa => 'Str');
  has RefreshedAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::DescribeInstancesHealthResult

=head1 ATTRIBUTES


=head2 InstanceHealthList => ArrayRef[L<Paws::ElasticBeanstalk::SingleInstanceHealth>]

Contains the response body with information about the health of the
instance.



=head2 NextToken => Str

The next token.



=head2 RefreshedAt => Str

The date and time the information was last refreshed.




=cut

