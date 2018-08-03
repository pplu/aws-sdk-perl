
package Paws::SSM::LabelParameterVersionResult;
  use Moose;
  has InvalidLabels => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::LabelParameterVersionResult

=head1 ATTRIBUTES


=head2 InvalidLabels => ArrayRef[Str|Undef]

The label does not meet the requirements. For information about
parameter label requirements, see Labeling Parameters
(http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-labels.html)
in the I<AWS Systems Manager User Guide>.


=head2 _request_id => Str


=cut

1;