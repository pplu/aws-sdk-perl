
package Paws::OpsWorks::DescribeTimeBasedAutoScalingResult;
  use Moose;
  has TimeBasedAutoScalingConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::TimeBasedAutoScalingConfiguration]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeTimeBasedAutoScalingResult

=head1 ATTRIBUTES


=head2 TimeBasedAutoScalingConfigurations => ArrayRef[L<Paws::OpsWorks::TimeBasedAutoScalingConfiguration>]

An array of C<TimeBasedAutoScalingConfiguration> objects that describe
the configuration for the specified instances.


=head2 _request_id => Str


=cut

1;