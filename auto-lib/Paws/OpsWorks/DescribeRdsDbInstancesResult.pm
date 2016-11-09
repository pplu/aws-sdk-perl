
package Paws::OpsWorks::DescribeRdsDbInstancesResult;
  use Moose;
  has RdsDbInstances => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::RdsDbInstance]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeRdsDbInstancesResult

=head1 ATTRIBUTES


=head2 RdsDbInstances => ArrayRef[L<Paws::OpsWorks::RdsDbInstance>]

An a array of C<RdsDbInstance> objects that describe the instances.


=head2 _request_id => Str


=cut

1;