
package Paws::IoT1ClickDevices::ListDeviceEvents;
  use Moose;
  has DeviceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'deviceId', required => 1);
  has FromTimeStamp => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'fromTimeStamp', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ToTimeStamp => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'toTimeStamp', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDeviceEvents');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/devices/{deviceId}/events');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT1ClickDevices::ListDeviceEventsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickDevices::ListDeviceEvents - Arguments for method ListDeviceEvents on L<Paws::IoT1ClickDevices>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDeviceEvents on the
L<AWS IoT 1-Click Devices Service|Paws::IoT1ClickDevices> service. Use the attributes of this class
as arguments to method ListDeviceEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDeviceEvents.

=head1 SYNOPSIS

    my $devices.iot1click = Paws->service('IoT1ClickDevices');
    my $ListDeviceEventsResponse = $devices . iot1click->ListDeviceEvents(
      DeviceId      => 'My__string',
      FromTimeStamp => '1970-01-01T01:00:00',
      ToTimeStamp   => '1970-01-01T01:00:00',
      MaxResults    => 1,                       # OPTIONAL
      NextToken     => 'My__string',            # OPTIONAL
    );

    # Results:
    my $Events    = $ListDeviceEventsResponse->Events;
    my $NextToken = $ListDeviceEventsResponse->NextToken;

    # Returns a L<Paws::IoT1ClickDevices::ListDeviceEventsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devices.iot1click/ListDeviceEvents>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceId => Str

The unique identifier of the device.



=head2 B<REQUIRED> FromTimeStamp => Str

The start date for the device event query, in ISO8061 format. For
example, 2018-03-28T15:45:12.880Z



=head2 MaxResults => Int

The maximum number of results to return per request. If not set, a
default value of 100 is used.



=head2 NextToken => Str

The token to retrieve the next set of results.



=head2 B<REQUIRED> ToTimeStamp => Str

The end date for the device event query, in ISO8061 format. For
example, 2018-03-28T15:45:12.880Z




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDeviceEvents in L<Paws::IoT1ClickDevices>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

