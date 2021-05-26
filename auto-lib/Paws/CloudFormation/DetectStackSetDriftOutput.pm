
package Paws::CloudFormation::DetectStackSetDriftOutput;
  use Moose;
  has OperationId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DetectStackSetDriftOutput

=head1 ATTRIBUTES


=head2 OperationId => Str

The ID of the drift detection stack set operation.

you can use this operation id with C< DescribeStackSetOperation > to
monitor the progress of the drift detection operation.


=head2 _request_id => Str


=cut

