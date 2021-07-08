
package Paws::LakeFormation::ListLFTagsResponse;
  use Moose;
  has LFTags => (is => 'ro', isa => 'ArrayRef[Paws::LakeFormation::LFTagPair]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::ListLFTagsResponse

=head1 ATTRIBUTES


=head2 LFTags => ArrayRef[L<Paws::LakeFormation::LFTagPair>]

A list of tags that the requested has permission to view.


=head2 NextToken => Str

A continuation token, present if the current list segment is not the
last.


=head2 _request_id => Str


=cut

1;