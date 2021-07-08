
package Paws::LakeFormation::GetResourceLFTagsResponse;
  use Moose;
  has LFTagOnDatabase => (is => 'ro', isa => 'ArrayRef[Paws::LakeFormation::LFTagPair]');
  has LFTagsOnColumns => (is => 'ro', isa => 'ArrayRef[Paws::LakeFormation::ColumnLFTag]');
  has LFTagsOnTable => (is => 'ro', isa => 'ArrayRef[Paws::LakeFormation::LFTagPair]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::GetResourceLFTagsResponse

=head1 ATTRIBUTES


=head2 LFTagOnDatabase => ArrayRef[L<Paws::LakeFormation::LFTagPair>]

A list of tags applied to a database resource.


=head2 LFTagsOnColumns => ArrayRef[L<Paws::LakeFormation::ColumnLFTag>]

A list of tags applied to a column resource.


=head2 LFTagsOnTable => ArrayRef[L<Paws::LakeFormation::LFTagPair>]

A list of tags applied to a table resource.


=head2 _request_id => Str


=cut

1;