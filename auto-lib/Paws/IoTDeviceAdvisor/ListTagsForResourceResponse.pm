
package Paws::IoTDeviceAdvisor::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::IoTDeviceAdvisor::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTDeviceAdvisor::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::IoTDeviceAdvisor::TagMap>

The tags attached to the IoT Device Advisor resource.


=head2 _request_id => Str


=cut

