
package Paws::OpsWorks::DescribeLoadBasedAutoScalingResult;
  use Moose;
  has LoadBasedAutoScalingConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::LoadBasedAutoScalingConfiguration]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeLoadBasedAutoScalingResult

=head1 ATTRIBUTES


=head2 LoadBasedAutoScalingConfigurations => ArrayRef[L<Paws::OpsWorks::LoadBasedAutoScalingConfiguration>]

An array of C<LoadBasedAutoScalingConfiguration> objects that describe
each layer's configuration.


=head2 _request_id => Str


=cut

1;