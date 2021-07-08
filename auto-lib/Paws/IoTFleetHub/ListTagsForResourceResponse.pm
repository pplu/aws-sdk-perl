
package Paws::IoTFleetHub::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::IoTFleetHub::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetHub::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::IoTFleetHub::TagMap>

The list of tags assigned to the resource.


=head2 _request_id => Str


=cut

