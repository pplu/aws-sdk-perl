
package Paws::MediaConnect::CreateFlow;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'availabilityZone');
  has Entitlements => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::GrantEntitlementRequest]', traits => ['NameInRequest'], request_name => 'entitlements');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Outputs => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::AddOutputRequest]', traits => ['NameInRequest'], request_name => 'outputs');
  has Source => (is => 'ro', isa => 'Paws::MediaConnect::SetSourceRequest', traits => ['NameInRequest'], request_name => 'source', required => 1);

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
      Name   => 'My__string',
      Source => {
        Decryption => {
          Algorithm => 'aes128',        # values: aes128, aes192, aes256
          RoleArn   => 'My__string',
          SecretArn => 'My__string',
          KeyType   => 'static-key',    # values: static-key; OPTIONAL
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
            SecretArn => 'My__string',
            KeyType   => 'static-key',     # values: static-key; OPTIONAL
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
            Algorithm => 'aes128',        # values: aes128, aes192, aes256
            RoleArn   => 'My__string',
            SecretArn => 'My__string',
            KeyType   => 'static-key',    # values: static-key; OPTIONAL
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



=head2 Entitlements => ArrayRef[L<Paws::MediaConnect::GrantEntitlementRequest>]

The entitlements that you want to grant on a flow.



=head2 B<REQUIRED> Name => Str

The name of the flow.



=head2 Outputs => ArrayRef[L<Paws::MediaConnect::AddOutputRequest>]

The outputs that you want to add to this flow.



=head2 B<REQUIRED> Source => L<Paws::MediaConnect::SetSourceRequest>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFlow in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

