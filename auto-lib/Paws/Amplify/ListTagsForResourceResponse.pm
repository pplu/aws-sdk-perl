
package Paws::Amplify::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Amplify::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Amplify::TagMap>

A list of tags for the specified The Amazon Resource Name (ARN).


=head2 _request_id => Str


=cut

