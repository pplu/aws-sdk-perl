
package Paws::MediaConnect::CreateFlow;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'availabilityZone');
  has Entitlements => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::GrantEntitlementRequest]', traits => ['NameInRequest'], request_name => 'entitlements');
  has MediaStreams => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::AddMediaStreamRequest]', traits => ['NameInRequest'], request_name => 'mediaStreams');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Outputs => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::AddOutputRequest]', traits => ['NameInRequest'], request_name => 'outputs');
  has Source => (is => 'ro', isa => 'Paws::MediaConnect::SetSourceRequest', traits => ['NameInRequest'], request_name => 'source');
  has SourceFailoverConfig => (is => 'ro', isa => 'Paws::MediaConnect::FailoverConfig', traits => ['NameInRequest'], request_name => 'sourceFailoverConfig');
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::SetSourceRequest]', traits => ['NameInRequest'], request_name => 'sources');
  has VpcInterfaces => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::VpcInterfaceRequest]', traits => ['NameInRequest'], request_name => 'vpcInterfaces');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFlow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/flows');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConnect::CreateFlowResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::CreateFlow - Arguments for method CreateFlow on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFlow on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method CreateFlow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFlow.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $CreateFlowResponse = $mediaconnect->CreateFlow(
      Name             => 'My__string',
      AvailabilityZone => 'My__string',    # OPTIONAL
      Entitlements     => [
        {
          Subscribers                      => [ 'My__string', ... ],
          DataTransferSubscriberFeePercent => 1,                      # OPTIONAL
          Description                      => 'My__string',
          Encryption                       => {
            RoleArn   => 'My__string',
            Algorithm => 'aes128',    # values: aes128, aes192, aes256; OPTIONAL
            ConstantInitializationVector => 'My__string',
            DeviceId                     => 'My__string',
            KeyType                      =>
              'speke',    # values: speke, static-key, srt-password; OPTIONAL
            Region     => 'My__string',
            ResourceId => 'My__string',
            SecretArn  => 'My__string',
            Url        => 'My__string',
          },    # OPTIONAL
          EntitlementStatus => 'ENABLED',  # values: ENABLED, DISABLED; OPTIONAL
          Name              => 'My__string',
        },
        ...
      ],    # OPTIONAL
      MediaStreams => [
        {
          MediaStreamId   => 1,           # OPTIONAL
          MediaStreamName => 'My__string',
          MediaStreamType => 'video',     # values: video, audio, ancillary-data
          Attributes      => {
            Fmtp => {
              ChannelOrder => 'My__string',
              Colorimetry  => 'BT601'
              , # values: BT601, BT709, BT2020, BT2100, ST2065-1, ST2065-3, XYZ; OPTIONAL
              ExactFramerate => 'My__string',
              Par            => 'My__string',
              Range => 'NARROW',   # values: NARROW, FULL, FULLPROTECT; OPTIONAL
              ScanMode => 'progressive'
              , # values: progressive, interlace, progressive-segmented-frame; OPTIONAL
              Tcs => 'SDR'
              , # values: SDR, PQ, HLG, LINEAR, BT2100LINPQ, BT2100LINHLG, ST2065-1, ST428-1, DENSITY; OPTIONAL
            },    # OPTIONAL
            Lang => 'My__string',
          },    # OPTIONAL
          ClockRate   => 1,              # OPTIONAL
          Description => 'My__string',
          VideoFormat => 'My__string',
        },
        ...
      ],    # OPTIONAL
      Outputs => [
        {
          Protocol => 'zixi-push'
          , # values: zixi-push, rtp-fec, rtp, zixi-pull, rist, st2110-jpegxs, cdi, srt-listener
          CidrAllowList => [ 'My__string', ... ],
          Description   => 'My__string',
          Destination   => 'My__string',
          Encryption    => {
            RoleArn   => 'My__string',
            Algorithm => 'aes128',    # values: aes128, aes192, aes256; OPTIONAL
            ConstantInitializationVector => 'My__string',
            DeviceId                     => 'My__string',
            KeyType                      =>
              'speke',    # values: speke, static-key, srt-password; OPTIONAL
            Region     => 'My__string',
            ResourceId => 'My__string',
            SecretArn  => 'My__string',
            Url        => 'My__string',
          },    # OPTIONAL
          MaxLatency                      => 1,    # OPTIONAL
          MediaStreamOutputConfigurations => [
            {
              EncodingName    => 'jxsv',      # values: jxsv, raw, smpte291, pcm
              MediaStreamName => 'My__string',
              DestinationConfigurations => [
                {
                  DestinationIp   => 'My__string',
                  DestinationPort => 1,              # OPTIONAL
                  Interface       => {
                    Name => 'My__string',

                  },

                },
                ...
              ],    # OPTIONAL
              EncodingParameters => {
                CompressionFactor => 1,
                EncoderProfile    => 'main',    # values: main, high

              },    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
          MinLatency             => 1,              # OPTIONAL
          Name                   => 'My__string',
          Port                   => 1,              # OPTIONAL
          RemoteId               => 'My__string',
          SmoothingLatency       => 1,              # OPTIONAL
          StreamId               => 'My__string',
          VpcInterfaceAttachment => { VpcInterfaceName => 'My__string', }
          ,                                         # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Source => {
        Decryption => {
          RoleArn   => 'My__string',
          Algorithm => 'aes128',      # values: aes128, aes192, aes256; OPTIONAL
          ConstantInitializationVector => 'My__string',
          DeviceId                     => 'My__string',
          KeyType                      =>
            'speke',    # values: speke, static-key, srt-password; OPTIONAL
          Region     => 'My__string',
          ResourceId => 'My__string',
          SecretArn  => 'My__string',
          Url        => 'My__string',
        },    # OPTIONAL
        Description                     => 'My__string',
        EntitlementArn                  => 'My__string',
        IngestPort                      => 1,              # OPTIONAL
        MaxBitrate                      => 1,              # OPTIONAL
        MaxLatency                      => 1,              # OPTIONAL
        MaxSyncBuffer                   => 1,              # OPTIONAL
        MediaStreamSourceConfigurations => [
          {
            EncodingName    => 'jxsv',        # values: jxsv, raw, smpte291, pcm
            MediaStreamName => 'My__string',
            InputConfigurations => [
              {
                InputPort => 1,               # OPTIONAL
                Interface => {
                  Name => 'My__string',

                },

              },
              ...
            ],    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        MinLatency => 1,              # OPTIONAL
        Name       => 'My__string',
        Protocol   => 'zixi-push'
        , # values: zixi-push, rtp-fec, rtp, zixi-pull, rist, st2110-jpegxs, cdi, srt-listener
        StreamId         => 'My__string',
        VpcInterfaceName => 'My__string',
        WhitelistCidr    => 'My__string',
      },    # OPTIONAL
      SourceFailoverConfig => {
        FailoverMode   => 'MERGE',      # values: MERGE, FAILOVER; OPTIONAL
        RecoveryWindow => 1,            # OPTIONAL
        SourcePriority => { PrimarySource => 'My__string', },    # OPTIONAL
        State          => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
      },    # OPTIONAL
      Sources => [
        {
          Decryption => {
            RoleArn   => 'My__string',
            Algorithm => 'aes128',    # values: aes128, aes192, aes256; OPTIONAL
            ConstantInitializationVector => 'My__string',
            DeviceId                     => 'My__string',
            KeyType                      =>
              'speke',    # values: speke, static-key, srt-password; OPTIONAL
            Region     => 'My__string',
            ResourceId => 'My__string',
            SecretArn  => 'My__string',
            Url        => 'My__string',
          },    # OPTIONAL
          Description                     => 'My__string',
          EntitlementArn                  => 'My__string',
          IngestPort                      => 1,              # OPTIONAL
          MaxBitrate                      => 1,              # OPTIONAL
          MaxLatency                      => 1,              # OPTIONAL
          MaxSyncBuffer                   => 1,              # OPTIONAL
          MediaStreamSourceConfigurations => [
            {
              EncodingName    => 'jxsv',      # values: jxsv, raw, smpte291, pcm
              MediaStreamName => 'My__string',
              InputConfigurations => [
                {
                  InputPort => 1,             # OPTIONAL
                  Interface => {
                    Name => 'My__string',

                  },

                },
                ...
              ],    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
          MinLatency => 1,              # OPTIONAL
          Name       => 'My__string',
          Protocol   => 'zixi-push'
          , # values: zixi-push, rtp-fec, rtp, zixi-pull, rist, st2110-jpegxs, cdi, srt-listener
          StreamId         => 'My__string',
          VpcInterfaceName => 'My__string',
          WhitelistCidr    => 'My__string',
        },
        ...
      ],    # OPTIONAL
      VpcInterfaces => [
        {
          Name                 => 'My__string',
          RoleArn              => 'My__string',
          SecurityGroupIds     => [ 'My__string', ... ],
          SubnetId             => 'My__string',
          NetworkInterfaceType => 'ena',    # values: ena, efa; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Flow = $CreateFlowResponse->Flow;

    # Returns a L<Paws::MediaConnect::CreateFlowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/CreateFlow>

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

The Availability Zone that you want to create the flow in. These
options are limited to the Availability Zones within the current AWS
Region.



=head2 Entitlements => ArrayRef[L<Paws::MediaConnect::GrantEntitlementRequest>]

The entitlements that you want to grant on a flow.



=head2 MediaStreams => ArrayRef[L<Paws::MediaConnect::AddMediaStreamRequest>]

The media streams that you want to add to the flow. You can associate
these media streams with sources and outputs on the flow.



=head2 B<REQUIRED> Name => Str

The name of the flow.



=head2 Outputs => ArrayRef[L<Paws::MediaConnect::AddOutputRequest>]

The outputs that you want to add to this flow.



=head2 Source => L<Paws::MediaConnect::SetSourceRequest>





=head2 SourceFailoverConfig => L<Paws::MediaConnect::FailoverConfig>





=head2 Sources => ArrayRef[L<Paws::MediaConnect::SetSourceRequest>]





=head2 VpcInterfaces => ArrayRef[L<Paws::MediaConnect::VpcInterfaceRequest>]

The VPC interfaces you want on the flow.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFlow in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

