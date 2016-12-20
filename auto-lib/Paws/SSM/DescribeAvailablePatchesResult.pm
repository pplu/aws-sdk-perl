
package Paws::SSM::DescribeAvailablePatchesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Patches => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Patch]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeAvailablePatchesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 Patches => ArrayRef[L<Paws::SSM::Patch>]

An array of patches. Each entry in the array is a patch structure.


=head2 _request_id => Str


=cut

1;