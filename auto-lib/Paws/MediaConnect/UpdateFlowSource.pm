
package Paws::MediaConnect::UpdateFlowSource;
  use Moose;
  has Decryption => (is => 'ro', isa => 'Paws::MediaConnect::UpdateEncryption', traits => ['NameInRequest'], request_name => 'decryption');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EntitlementArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'entitlementArn');
  has FlowArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'flowArn', required => 1);
  has IngestPort => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'ingestPort');
  has MaxBitrate => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxBitrate');
  has MaxLatency => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxLatency');
  has MaxSyncBuffer => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxSyncBuffer');
  has MediaStreamSourceConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::MediaStreamSourceConfigurationRequest]', traits => ['NameInRequest'], request_name => 'mediaStreamSourceConfigurations');
  has MinLatency => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'minLatency');
  has Protocol => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'protocol');
  has SourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sourceArn', required => 1);
  has StreamId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'streamId');
  has VpcInterfaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcInterfaceName');
  has WhitelistCidr => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'whitelistCidr');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFlowSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/flows/{flowArn}/source/{sourceArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConnect::UpdateFlowSourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::UpdateFlowSource - Arguments for method UpdateFlowSource on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFlowSource on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method UpdateFlowSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFlowSource.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $UpdateFlowSourceResponse = $mediaconnect->UpdateFlowSource(
      FlowArn    => 'My__string',
      SourceArn  => 'My__string',
      Decryption => {
        Algorithm => 'aes128',    # values: aes128, aes192, aes256; OPTIONAL
        ConstantInitializationVector => 'My__string',
        DeviceId                     => 'My__string',
        KeyType => 'speke',  # values: speke, static-key, srt-password; OPTIONAL
        Region     => 'My__string',
        ResourceId => 'My__string',
        RoleArn    => 'My__string',
        SecretArn  => 'My__string',
        Url        => 'My__string',
      },    # OPTIONAL
      Description                     => 'My__string',    # OPTIONAL
      EntitlementArn                  => 'My__string',    # OPTIONAL
      IngestPort                      => 1,               # OPTIONAL
      MaxBitrate                      => 1,               # OPTIONAL
      MaxLatency                      => 1,               # OPTIONAL
      MaxSyncBuffer                   => 1,               # OPTIONAL
      MediaStreamSourceConfigurations => [
        {
          EncodingName        => 'jxsv',      # values: jxsv, raw, smpte291, pcm
          MediaStreamName     => 'My__string',
          InputConfigurations => [
            {
              InputPort => 1,
              Interface => {
                Name => 'My__string',

              },

            },
            ...
          ],                                  # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MinLatency       => 1,               # OPTIONAL
      Protocol         => 'zixi-push',     # OPTIONAL
      StreamId         => 'My__string',    # OPTIONAL
      VpcInterfaceName => 'My__string',    # OPTIONAL
      WhitelistCidr    => 'My__string',    # OPTIONAL
    );

    # Results:
    my $FlowArn = $UpdateFlowSourceResponse->FlowArn;
    my $Source  = $UpdateFlowSourceResponse->Source;

    # Returns a L<Paws::MediaConnect::UpdateFlowSourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/UpdateFlowSource>

=head1 ATTRIBUTES


=head2 Decryption => L<Paws::MediaConnect::UpdateEncryption>

The type of encryption used on the content ingested from this source.



=head2 Description => Str

A description for the source. This value is not used or seen outside of
the current AWS Elemental MediaConnect account.



=head2 EntitlementArn => Str

The ARN of the entitlement that allows you to subscribe to this flow.
The entitlement is set by the flow originator, and the ARN is generated
as part of the originator's flow.



=head2 B<REQUIRED> FlowArn => Str

The flow that is associated with the source that you want to update.



=head2 IngestPort => Int

The port that the flow will be listening on for incoming content.



=head2 MaxBitrate => Int

The smoothing max bitrate for RIST, RTP, and RTP-FEC streams.



=head2 MaxLatency => Int

The maximum latency in milliseconds. This parameter applies only to
RIST-based and Zixi-based streams.



=head2 MaxSyncBuffer => Int

The size of the buffer (in milliseconds) to use to sync incoming source
data.



=head2 MediaStreamSourceConfigurations => ArrayRef[L<Paws::MediaConnect::MediaStreamSourceConfigurationRequest>]

The media streams that are associated with the source, and the
parameters for those associations.



=head2 MinLatency => Int

The minimum latency in milliseconds for SRT-based streams. In streams
that use the SRT protocol, this value that you set on your MediaConnect
source or output represents the minimal potential latency of that
connection. The latency of the stream is set to the highest number
between the senderE<rsquo>s minimum latency and the receiverE<rsquo>s
minimum latency.



=head2 Protocol => Str

The protocol that is used by the source.

Valid values are: C<"zixi-push">, C<"rtp-fec">, C<"rtp">, C<"zixi-pull">, C<"rist">, C<"st2110-jpegxs">, C<"cdi">, C<"srt-listener">

=head2 B<REQUIRED> SourceArn => Str

The ARN of the source that you want to update.



=head2 StreamId => Str

The stream ID that you want to use for this transport. This parameter
applies only to Zixi-based streams.



=head2 VpcInterfaceName => Str

The name of the VPC interface to use for this source.



=head2 WhitelistCidr => Str

The range of IP addresses that should be allowed to contribute content
to your source. These IP addresses should be in the form of a Classless
Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFlowSource in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

