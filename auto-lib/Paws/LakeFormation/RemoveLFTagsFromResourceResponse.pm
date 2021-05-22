
package Paws::LakeFormation::RemoveLFTagsFromResourceResponse;
  use Moose;
  has Failures => (is => 'ro', isa => 'ArrayRef[Paws::LakeFormation::LFTagError]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::RemoveLFTagsFromResourceResponse

=head1 ATTRIBUTES


=head2 Failures => ArrayRef[L<Paws::LakeFormation::LFTagError>]

A list of failures to untag a resource.


=head2 _request_id => Str


=cut

1;