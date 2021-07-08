
package Paws::IoTSiteWise::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::IoTSiteWise::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::IoTSiteWise::TagMap>

The list of key-value pairs that contain metadata for the resource. For
more information, see Tagging your AWS IoT SiteWise resources
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html)
in the I<AWS IoT SiteWise User Guide>.


=head2 _request_id => Str


=cut

