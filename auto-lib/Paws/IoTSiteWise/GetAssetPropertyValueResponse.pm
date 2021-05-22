
package Paws::IoTSiteWise::GetAssetPropertyValueResponse;
  use Moose;
  has PropertyValue => (is => 'ro', isa => 'Paws::IoTSiteWise::AssetPropertyValue', traits => ['NameInRequest'], request_name => 'propertyValue');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::GetAssetPropertyValueResponse

=head1 ATTRIBUTES


=head2 PropertyValue => L<Paws::IoTSiteWise::AssetPropertyValue>

The current asset property value.


=head2 _request_id => Str


=cut

