
package Paws::SSM::DescribeEffectivePatchesForPatchBaselineResult;
  use Moose;
  has EffectivePatches => (is => 'ro', isa => 'ArrayRef[Paws::SSM::EffectivePatch]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeEffectivePatchesForPatchBaselineResult

=head1 ATTRIBUTES


=head2 EffectivePatches => ArrayRef[L<Paws::SSM::EffectivePatch>]

An array of patches and patch status.


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 _request_id => Str


=cut

1;