
package Paws::LocationService::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::LocationService::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::LocationService::TagMap>

The mapping from tag key to tag value for each tag associated with the
specified resource.


=head2 _request_id => Str


=cut

