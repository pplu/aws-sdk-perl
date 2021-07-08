
package Paws::LakeFormation::AddLFTagsToResourceResponse;
  use Moose;
  has Failures => (is => 'ro', isa => 'ArrayRef[Paws::LakeFormation::LFTagError]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::AddLFTagsToResourceResponse

=head1 ATTRIBUTES


=head2 Failures => ArrayRef[L<Paws::LakeFormation::LFTagError>]

A list of failures to tag the resource.


=head2 _request_id => Str


=cut

1;