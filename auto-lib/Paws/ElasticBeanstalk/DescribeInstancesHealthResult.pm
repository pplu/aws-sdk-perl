
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

Detailed health information about each instance.

The output differs slightly between Linux and Windows environments.
There is a difference in the members that are supported under the
C<E<lt>CPUUtilizationE<gt>> type.


=head2 NextToken => Str

Pagination token for the next page of results, if available.


=head2 RefreshedAt => Str

The date and time that the health information was retrieved.


=head2 _request_id => Str


=cut

