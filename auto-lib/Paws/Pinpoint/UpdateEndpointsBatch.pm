
package Paws::Pinpoint::UpdateEndpointsBatch;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id', required => 1);
  has EndpointBatchRequest => (is => 'ro', isa => 'Paws::Pinpoint::EndpointBatchRequest', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'EndpointBatchRequest');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEndpointsBatch');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/endpoints');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::UpdateEndpointsBatchResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateEndpointsBatch - Arguments for method UpdateEndpointsBatch on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEndpointsBatch on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method UpdateEndpointsBatch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEndpointsBatch.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $UpdateEndpointsBatchResponse = $pinpoint->UpdateEndpointsBatch(
      ApplicationId        => 'My__string',
      EndpointBatchRequest => {
        Item => [
          {
            Address    => 'My__string',
            Attributes => { 'My__string' => [ 'My__string', ... ], }, # OPTIONAL
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
            Id             => 'My__string',
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
          },
          ...
        ],        # OPTIONAL
      },

    );

    # Results:
    my $MessageBody = $UpdateEndpointsBatchResponse->MessageBody;

    # Returns a L<Paws::Pinpoint::UpdateEndpointsBatchResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/UpdateEndpointsBatch>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique ID of your Amazon Pinpoint application.



=head2 B<REQUIRED> EndpointBatchRequest => L<Paws::Pinpoint::EndpointBatchRequest>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEndpointsBatch in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

