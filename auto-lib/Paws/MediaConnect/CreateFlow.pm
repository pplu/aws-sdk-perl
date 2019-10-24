
package Paws::MediaConnect::CreateFlow;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaConnect::Types qw/MediaConnect_GrantEntitlementRequest MediaConnect_AddOutputRequest MediaConnect_SetSourceRequest/;
  has AvailabilityZone => (is => 'ro', isa => Str, predicate => 1);
  has Entitlements => (is => 'ro', isa => ArrayRef[MediaConnect_GrantEntitlementRequest], predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Outputs => (is => 'ro', isa => ArrayRef[MediaConnect_AddOutputRequest], predicate => 1);
  has Source => (is => 'ro', isa => MediaConnect_SetSourceRequest, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateFlow');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/flows');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::MediaConnect::CreateFlowResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Source' => {
                             'class' => 'Paws::MediaConnect::SetSourceRequest',
                             'type' => 'MediaConnect_SetSourceRequest'
                           },
               'Outputs' => {
                              'class' => 'Paws::MediaConnect::AddOutputRequest',
                              'type' => 'ArrayRef[MediaConnect_AddOutputRequest]'
                            },
               'Name' => {
                           'type' => 'Str'
                         },
               'Entitlements' => {
                                   'class' => 'Paws::MediaConnect::GrantEntitlementRequest',
                                   'type' => 'ArrayRef[MediaConnect_GrantEntitlementRequest]'
                                 },
               'AvailabilityZone' => {
                                       'type' => 'Str'
                                     }
             },
  'NameInRequest' => {
                       'Source' => 'source',
                       'Outputs' => 'outputs',
                       'Name' => 'name',
                       'Entitlements' => 'entitlements',
                       'AvailabilityZone' => 'availabilityZone'
                     },
  'IsRequired' => {
                    'Source' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }

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
      Name   => 'My__string',
      Source => {
        Decryption => {
          Algorithm => 'aes128',       # values: aes128, aes192, aes256
          RoleArn   => 'My__string',
          ConstantInitializationVector => 'My__string',
          DeviceId                     => 'My__string',
          KeyType    => 'speke',        # values: speke, static-key; OPTIONAL
          Region     => 'My__string',
          ResourceId => 'My__string',
          SecretArn  => 'My__string',
          Url        => 'My__string',
        },    # OPTIONAL
        Description    => 'My__string',
        EntitlementArn => 'My__string',
        IngestPort     => 1,              # OPTIONAL
        MaxBitrate     => 1,              # OPTIONAL
        MaxLatency     => 1,              # OPTIONAL
        Name           => 'My__string',
        Protocol => 'zixi-push',    # values: zixi-push, rtp-fec, rtp; OPTIONAL
        StreamId => 'My__string',
        WhitelistCidr => 'My__string',
      },
      AvailabilityZone => 'My__string',    # OPTIONAL
      Entitlements     => [
        {
          Subscribers => [ 'My__string', ... ],
          Description => 'My__string',
          Encryption  => {
            Algorithm => 'aes128',         # values: aes128, aes192, aes256
            RoleArn   => 'My__string',
            ConstantInitializationVector => 'My__string',
            DeviceId                     => 'My__string',
            KeyType    => 'speke',         # values: speke, static-key; OPTIONAL
            Region     => 'My__string',
            ResourceId => 'My__string',
            SecretArn  => 'My__string',
            Url        => 'My__string',
          },    # OPTIONAL
          Name => 'My__string',
        },
        ...
      ],        # OPTIONAL
      Outputs => [
        {
          Destination => 'My__string',
          Port        => 1,              # OPTIONAL
          Protocol => 'zixi-push',   # values: zixi-push, rtp-fec, rtp; OPTIONAL
          Description => 'My__string',
          Encryption  => {
            Algorithm => 'aes128',       # values: aes128, aes192, aes256
            RoleArn   => 'My__string',
            ConstantInitializationVector => 'My__string',
            DeviceId                     => 'My__string',
            KeyType    => 'speke',        # values: speke, static-key; OPTIONAL
            Region     => 'My__string',
            ResourceId => 'My__string',
            SecretArn  => 'My__string',
            Url        => 'My__string',
          },    # OPTIONAL
          MaxLatency       => 1,              # OPTIONAL
          Name             => 'My__string',
          SmoothingLatency => 1,              # OPTIONAL
          StreamId         => 'My__string',
        },
        ...
      ],                                      # OPTIONAL
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



=head2 Entitlements => ArrayRef[MediaConnect_GrantEntitlementRequest]

The entitlements that you want to grant on a flow.



=head2 B<REQUIRED> Name => Str

The name of the flow.



=head2 Outputs => ArrayRef[MediaConnect_AddOutputRequest]

The outputs that you want to add to this flow.



=head2 B<REQUIRED> Source => MediaConnect_SetSourceRequest






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFlow in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

