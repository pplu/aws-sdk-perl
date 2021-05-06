
package Paws::AlexaForBusiness::ListDeviceEvents;
  use Moose;
  has DeviceArn => (is => 'ro', isa => 'Str', required => 1);
  has EventType => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDeviceEvents');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AlexaForBusiness::ListDeviceEventsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::ListDeviceEvents - Arguments for method ListDeviceEvents on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDeviceEvents on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method ListDeviceEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDeviceEvents.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $ListDeviceEventsResponse = $a4b->ListDeviceEvents(
      DeviceArn  => 'MyArn',
      EventType  => 'CONNECTION_STATUS',    # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyNextToken',          # OPTIONAL
    );

    # Results:
    my $DeviceEvents = $ListDeviceEventsResponse->DeviceEvents;
    my $NextToken    = $ListDeviceEventsResponse->NextToken;

    # Returns a L<Paws::AlexaForBusiness::ListDeviceEventsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/ListDeviceEvents>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceArn => Str

The ARN of a device.



=head2 EventType => Str

The event type to filter device events. If EventType isn't specified,
this returns a list of all device events in reverse chronological
order. If EventType is specified, this returns a list of device events
for that EventType in reverse chronological order.

Valid values are: C<"CONNECTION_STATUS">, C<"DEVICE_STATUS">

=head2 MaxResults => Int

The maximum number of results to include in the response. The default
value is 50. If more results exist than the specified MaxResults value,
a token is included in the response so that the remaining results can
be retrieved.



=head2 NextToken => Str

An optional token returned from a prior request. Use this token for
pagination of results from this action. If this parameter is specified,
the response only includes results beyond the token, up to the value
specified by MaxResults. When the end of results is reached, the
response has a value of null.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDeviceEvents in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

