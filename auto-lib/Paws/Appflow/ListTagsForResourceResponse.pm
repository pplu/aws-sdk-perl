
package Paws::Appflow::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Appflow::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Appflow::TagMap>

The tags used to organize, track, or control access for your flow.


=head2 _request_id => Str


=cut

