
package Paws::EMR::CancelStepsOutput;
  use Moose;
  has CancelStepsInfoList => (is => 'ro', isa => 'ArrayRef[Paws::EMR::CancelStepsInfo]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::CancelStepsOutput

=head1 ATTRIBUTES


=head2 CancelStepsInfoList => ArrayRef[L<Paws::EMR::CancelStepsInfo>]

A list of CancelStepsInfo, which shows the status of specified cancel
requests for each C<StepID> specified.


=head2 _request_id => Str


=cut

1;