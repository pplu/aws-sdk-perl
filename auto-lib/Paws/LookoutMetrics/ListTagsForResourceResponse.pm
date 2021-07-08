
package Paws::LookoutMetrics::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::LookoutMetrics::TagMap', traits => ['NameInRequest'], request_name => 'Tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::LookoutMetrics::TagMap>

The resource's tags.


=head2 _request_id => Str


=cut

