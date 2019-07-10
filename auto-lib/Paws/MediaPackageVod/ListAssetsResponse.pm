
package Paws::MediaPackageVod::ListAssetsResponse;
  use Moose;
  has Assets => (is => 'ro', isa => 'ArrayRef[Paws::MediaPackageVod::AssetShallow]', traits => ['NameInRequest'], request_name => 'assets');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::ListAssetsResponse

=head1 ATTRIBUTES


=head2 Assets => ArrayRef[L<Paws::MediaPackageVod::AssetShallow>]

A list of MediaPackage VOD Asset resources.


=head2 NextToken => Str

A token that can be used to resume pagination from the end of the
collection.


=head2 _request_id => Str


=cut

