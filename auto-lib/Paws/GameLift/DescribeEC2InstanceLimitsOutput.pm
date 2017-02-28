
package Paws::GameLift::DescribeEC2InstanceLimitsOutput;
  use Moose;
  has EC2InstanceLimits => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::EC2InstanceLimit]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeEC2InstanceLimitsOutput

=head1 ATTRIBUTES


=head2 EC2InstanceLimits => ArrayRef[L<Paws::GameLift::EC2InstanceLimit>]

Object that contains the maximum number of instances for the specified
instance type.


=head2 _request_id => Str


=cut

1;