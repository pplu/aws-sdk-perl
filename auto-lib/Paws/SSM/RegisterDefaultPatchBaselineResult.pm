
package Paws::SSM::RegisterDefaultPatchBaselineResult;
  use Moose;
  has BaselineId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::RegisterDefaultPatchBaselineResult

=head1 ATTRIBUTES


=head2 BaselineId => Str

The ID of the default patch baseline.


=head2 _request_id => Str


=cut

1;