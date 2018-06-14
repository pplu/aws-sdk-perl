
package Paws::Pinpoint::UpdateEndpoint;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id', required => 1);
  has EndpointId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'endpoint-id', required => 1);
  has EndpointRequest => (is => 'ro', isa => 'Paws::Pinpoint::EndpointRequest', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'EndpointRequest');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEndpoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/endpoints/{endpoint-id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::UpdateEndpointResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateEndpoint - Arguments for method UpdateEndpoint on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEndpoint on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method UpdateEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEndpoint.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $UpdateEndpointResponse = $pinpoint->UpdateEndpoint(
      ApplicationId   => 'My__string',
      EndpointId      => 'My__string',
      EndpointRequest => {
        RequestId   => 'My__string',
        ChannelType => 'GCM'
        , # values: GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, EMAIL, BAIDU, CUSTOM; OPTIONAL
        Attributes     => { 'My__string' => [ 'My__string', ... ], }, # OPTIONAL
        OptOut         => 'My__string',
        EndpointStatus => 'My__string',
        Demographic    => {
          ModelVersion    => 'My__string',
          Platform        => 'My__string',
          Model           => 'My__string',
          Locale          => 'My__string',
          Make            => 'My__string',
          Timezone        => 'My__string',
          AppVersion      => 'My__string',
          PlatformVersion => 'My__string',
        },                                                            # OPTIONAL
        Address => 'My__string',
        User    => {
          UserId         => 'My__string',
          UserAttributes => { 'My__string' => [ 'My__string', ... ], }
          ,                                                           # OPTIONAL
        },    # OPTIONAL
        Metrics => { 'My__string' => 1, },    # OPTIONAL
        Location => {
          Region     => 'My__string',
          PostalCode => 'My__string',
          Latitude   => 1,
          Longitude  => 1,
          City       => 'My__string',
          Country    => 'My__string',
        },                                    # OPTIONAL
        EffectiveDate => 'My__string',
      },

    );

    # Results:
    my $MessageBody = $UpdateEndpointResponse->MessageBody;

    # Returns a L<Paws::Pinpoint::UpdateEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str





=head2 B<REQUIRED> EndpointId => Str





=head2 B<REQUIRED> EndpointRequest => L<Paws::Pinpoint::EndpointRequest>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEndpoint in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

