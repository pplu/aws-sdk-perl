
package Paws::MediaConnect::UpdateFlowOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Int/;
  use Paws::MediaConnect::Types qw/MediaConnect_UpdateEncryption/;
  has CidrAllowList => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has Destination => (is => 'ro', isa => Str, predicate => 1);
  has Encryption => (is => 'ro', isa => MediaConnect_UpdateEncryption, predicate => 1);
  has FlowArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MaxLatency => (is => 'ro', isa => Int, predicate => 1);
  has OutputArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Port => (is => 'ro', isa => Int, predicate => 1);
  has Protocol => (is => 'ro', isa => Str, predicate => 1);
  has RemoteId => (is => 'ro', isa => Str, predicate => 1);
  has SmoothingLatency => (is => 'ro', isa => Int, predicate => 1);
  has StreamId => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateFlowOutput');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/flows/{flowArn}/outputs/{outputArn}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::MediaConnect::UpdateFlowOutputResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'FlowArn' => 'flowArn',
                    'OutputArn' => 'outputArn'
                  },
  'NameInRequest' => {
                       'MaxLatency' => 'maxLatency',
                       'Protocol' => 'protocol',
                       'SmoothingLatency' => 'smoothingLatency',
                       'Destination' => 'destination',
                       'Encryption' => 'encryption',
                       'Port' => 'port',
                       'RemoteId' => 'remoteId',
                       'StreamId' => 'streamId',
                       'CidrAllowList' => 'cidrAllowList',
                       'Description' => 'description'
                     },
  'IsRequired' => {
                    'OutputArn' => 1,
                    'FlowArn' => 1
                  },
  'types' => {
               'StreamId' => {
                               'type' => 'Str'
                             },
               'Destination' => {
                                  'type' => 'Str'
                                },
               'Protocol' => {
                               'type' => 'Str'
                             },
               'CidrAllowList' => {
                                    'type' => 'ArrayRef[Str|Undef]'
                                  },
               'Description' => {
                                  'type' => 'Str'
                                },
               'OutputArn' => {
                                'type' => 'Str'
                              },
               'Port' => {
                           'type' => 'Int'
                         },
               'RemoteId' => {
                               'type' => 'Str'
                             },
               'Encryption' => {
                                 'class' => 'Paws::MediaConnect::UpdateEncryption',
                                 'type' => 'MediaConnect_UpdateEncryption'
                               },
               'FlowArn' => {
                              'type' => 'Str'
                            },
               'SmoothingLatency' => {
                                       'type' => 'Int'
                                     },
               'MaxLatency' => {
                                 'type' => 'Int'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::UpdateFlowOutput - Arguments for method UpdateFlowOutput on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFlowOutput on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method UpdateFlowOutput.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFlowOutput.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $UpdateFlowOutputResponse = $mediaconnect->UpdateFlowOutput(
      FlowArn       => 'My__string',
      OutputArn     => 'My__string',
      CidrAllowList => [ 'My__string', ... ],    # OPTIONAL
      Description   => 'My__string',             # OPTIONAL
      Destination   => 'My__string',             # OPTIONAL
      Encryption    => {
        Algorithm => 'aes128',    # values: aes128, aes192, aes256; OPTIONAL
        ConstantInitializationVector => 'My__string',
        DeviceId                     => 'My__string',
        KeyType    => 'speke',        # values: speke, static-key; OPTIONAL
        Region     => 'My__string',
        ResourceId => 'My__string',
        RoleArn    => 'My__string',
        SecretArn  => 'My__string',
        Url        => 'My__string',
      },    # OPTIONAL
      MaxLatency       => 1,               # OPTIONAL
      Port             => 1,               # OPTIONAL
      Protocol         => 'zixi-push',     # OPTIONAL
      RemoteId         => 'My__string',    # OPTIONAL
      SmoothingLatency => 1,               # OPTIONAL
      StreamId         => 'My__string',    # OPTIONAL
    );

    # Results:
    my $FlowArn = $UpdateFlowOutputResponse->FlowArn;
    my $Output  = $UpdateFlowOutputResponse->Output;

    # Returns a L<Paws::MediaConnect::UpdateFlowOutputResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/UpdateFlowOutput>

=head1 ATTRIBUTES


=head2 CidrAllowList => ArrayRef[Str|Undef]

The range of IP addresses that should be allowed to initiate output
requests to this flow. These IP addresses should be in the form of a
Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16.



=head2 Description => Str

A description of the output. This description appears only on the AWS
Elemental MediaConnect console and will not be seen by the end user.



=head2 Destination => Str

The IP address where you want to send the output.



=head2 Encryption => MediaConnect_UpdateEncryption

The type of key used for the encryption. If no keyType is provided, the
service will use the default setting (static-key).



=head2 B<REQUIRED> FlowArn => Str

The flow that is associated with the output that you want to update.



=head2 MaxLatency => Int

The maximum latency in milliseconds for Zixi-based streams.



=head2 B<REQUIRED> OutputArn => Str

The ARN of the output that you want to update.



=head2 Port => Int

The port to use when content is distributed to this output.



=head2 Protocol => Str

The protocol to use for the output.

Valid values are: C<"zixi-push">, C<"rtp-fec">, C<"rtp">, C<"zixi-pull">, C<"rist">

=head2 RemoteId => Str

The remote ID for the Zixi-pull stream.



=head2 SmoothingLatency => Int

The smoothing latency in milliseconds for RIST, RTP, and RTP-FEC
streams.



=head2 StreamId => Str

The stream ID that you want to use for this transport. This parameter
applies only to Zixi-based streams.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFlowOutput in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

