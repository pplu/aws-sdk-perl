
package Paws::IoTSecureTunneling::OpenTunnel;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has DestinationConfig => (is => 'ro', isa => 'Paws::IoTSecureTunneling::DestinationConfig', traits => ['NameInRequest'], request_name => 'destinationConfig' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoTSecureTunneling::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has TimeoutConfig => (is => 'ro', isa => 'Paws::IoTSecureTunneling::TimeoutConfig', traits => ['NameInRequest'], request_name => 'timeoutConfig' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'OpenTunnel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSecureTunneling::OpenTunnelResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSecureTunneling::OpenTunnel - Arguments for method OpenTunnel on L<Paws::IoTSecureTunneling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method OpenTunnel on the
L<AWS IoT Secure Tunneling|Paws::IoTSecureTunneling> service. Use the attributes of this class
as arguments to method OpenTunnel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to OpenTunnel.

=head1 SYNOPSIS

    my $api.tunneling.iot = Paws->service('IoTSecureTunneling');
    my $OpenTunnelResponse = $api . tunneling . iot->OpenTunnel(
      Description       => 'MyDescription',    # OPTIONAL
      DestinationConfig => {
        Services => [
          'MyService', ...                     # min: 1, max: 8
        ],                                     # min: 1, max: 1
        ThingName => 'MyThingName',            # min: 1, max: 128

      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],                            # OPTIONAL
      TimeoutConfig => {
        MaxLifetimeTimeoutMinutes => 1,    # min: 1, max: 720; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $DestinationAccessToken = $OpenTunnelResponse->DestinationAccessToken;
    my $SourceAccessToken      = $OpenTunnelResponse->SourceAccessToken;
    my $TunnelArn              = $OpenTunnelResponse->TunnelArn;
    my $TunnelId               = $OpenTunnelResponse->TunnelId;

    # Returns a L<Paws::IoTSecureTunneling::OpenTunnelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.tunneling.iot/OpenTunnel>

=head1 ATTRIBUTES


=head2 Description => Str

A short text description of the tunnel.



=head2 DestinationConfig => L<Paws::IoTSecureTunneling::DestinationConfig>

The destination configuration for the OpenTunnel request.



=head2 Tags => ArrayRef[L<Paws::IoTSecureTunneling::Tag>]

A collection of tag metadata.



=head2 TimeoutConfig => L<Paws::IoTSecureTunneling::TimeoutConfig>

Timeout configuration for a tunnel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method OpenTunnel in L<Paws::IoTSecureTunneling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

