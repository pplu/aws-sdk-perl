
package Paws::DeviceFarm::ListArtifactsResult;
  use Moose;
  has Artifacts => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::Artifact]', traits => ['Unwrapped'], xmlname => 'artifacts' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListArtifactsResult

=head1 ATTRIBUTES

=head2 Artifacts => ArrayRef[L<Paws::DeviceFarm::Artifact>]

  Information about the artifacts.
=head2 NextToken => Str

  If the number of items that are returned is significantly large, this
is an identifier that is also returned, which can be used in a
subsequent call to this operation to return the next set of items in
the list.


=cut

1;