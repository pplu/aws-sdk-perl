
package Paws::MediaLive::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::MediaLive::Tags', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::MediaLive::Tags>




=head2 _request_id => Str


=cut

