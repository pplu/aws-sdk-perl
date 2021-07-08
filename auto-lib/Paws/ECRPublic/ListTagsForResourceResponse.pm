
package Paws::ECRPublic::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ECRPublic::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECRPublic::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::ECRPublic::Tag>]

The tags for the resource.


=head2 _request_id => Str


=cut

1;