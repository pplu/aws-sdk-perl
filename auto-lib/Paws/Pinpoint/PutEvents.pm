
package Paws::Pinpoint::PutEvents;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id', required => 1);
  has EventsRequest => (is => 'ro', isa => 'Paws::Pinpoint::EventsRequest', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'EventsRequest');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutEvents');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/events');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::PutEventsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::PutEvents - Arguments for method PutEvents on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutEvents on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method PutEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutEvents.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $PutEventsResponse = $pinpoint->PutEvents(
      ApplicationId => 'My__string',
      EventsRequest => {
        BatchItem => {
          'My__string' => {
            Endpoint => {
              Address    => 'My__string',
              Attributes => { 'My__string' => [ 'My__string', ... ], }
              ,    # OPTIONAL
              ChannelType => 'GCM'
              , # values: GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM; OPTIONAL
              Demographic => {
                AppVersion      => 'My__string',
                Locale          => 'My__string',
                Make            => 'My__string',
                Model           => 'My__string',
                ModelVersion    => 'My__string',
                Platform        => 'My__string',
                PlatformVersion => 'My__string',
                Timezone        => 'My__string',
              },    # OPTIONAL
              EffectiveDate  => 'My__string',
              EndpointStatus => 'My__string',
              Location       => {
                City       => 'My__string',
                Country    => 'My__string',
                Latitude   => 1,
                Longitude  => 1,
                PostalCode => 'My__string',
                Region     => 'My__string',
              },    # OPTIONAL
              Metrics   => { 'My__string' => 1, },    # OPTIONAL
              OptOut    => 'My__string',
              RequestId => 'My__string',
              User      => {
                UserAttributes => { 'My__string' => [ 'My__string', ... ], }
                ,                                     # OPTIONAL
                UserId => 'My__string',
              },    # OPTIONAL
            },    # OPTIONAL
            Events => {
              'My__string' => {
                AppPackageName => 'My__string',
                AppTitle       => 'My__string',
                AppVersionCode => 'My__string',
                Attributes     => { 'My__string' => 'My__string', },  # OPTIONAL
                ClientSdkVersion => 'My__string',
                EventType        => 'My__string',
                Metrics          => { 'My__string' => 1, },           # OPTIONAL
                SdkName          => 'My__string',
                Session          => {
                  Duration       => 1,                                # OPTIONAL
                  Id             => 'My__string',
                  StartTimestamp => 'My__string',
                  StopTimestamp  => 'My__string',
                },    # OPTIONAL
                Timestamp => 'My__string',
              },
            },    # OPTIONAL
          },
        },    # OPTIONAL
      },

    );

    # Results:
    my $EventsResponse = $PutEventsResponse->EventsResponse;

    # Returns a L<Paws::Pinpoint::PutEventsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/PutEvents>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique ID of your Amazon Pinpoint application.



=head2 B<REQUIRED> EventsRequest => L<Paws::Pinpoint::EventsRequest>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutEvents in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

