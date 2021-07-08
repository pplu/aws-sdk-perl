
package Paws::LakeFormation::SearchDatabasesByLFTagsResponse;
  use Moose;
  has DatabaseList => (is => 'ro', isa => 'ArrayRef[Paws::LakeFormation::TaggedDatabase]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::SearchDatabasesByLFTagsResponse

=head1 ATTRIBUTES


=head2 DatabaseList => ArrayRef[L<Paws::LakeFormation::TaggedDatabase>]

A list of databases that meet the tag conditions.


=head2 NextToken => Str

A continuation token, present if the current list segment is not the
last.


=head2 _request_id => Str


=cut

1;