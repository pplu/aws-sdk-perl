
package Paws::WellArchitected::GetLensVersionDifferenceOutput;
  use Moose;
  has BaseLensVersion => (is => 'ro', isa => 'Str');
  has LatestLensVersion => (is => 'ro', isa => 'Str');
  has LensAlias => (is => 'ro', isa => 'Str');
  has VersionDifferences => (is => 'ro', isa => 'Paws::WellArchitected::VersionDifferences');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::GetLensVersionDifferenceOutput

=head1 ATTRIBUTES


=head2 BaseLensVersion => Str

The base version of the lens.


=head2 LatestLensVersion => Str

The latest version of the lens.


=head2 LensAlias => Str




=head2 VersionDifferences => L<Paws::WellArchitected::VersionDifferences>




=head2 _request_id => Str


=cut

