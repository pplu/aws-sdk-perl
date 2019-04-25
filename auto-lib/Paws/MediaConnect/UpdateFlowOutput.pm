
package Paws::MediaConnect::UpdateFlowOutput;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Destination => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destination');
  has Encryption => (is => 'ro', isa => 'Paws::MediaConnect::UpdateEncryption', traits => ['NameInRequest'], request_name => 'encryption');
  has FlowArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'flowArn', required => 1);
  has MaxLatency => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxLatency');
  has OutputArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'outputArn', required => 1);
  has Port => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'port');
  has Protocol => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'protocol');
  has SmoothingLatency => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'smoothingLatency');
  has StreamId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'streamId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFlowOutput');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/flows/{flowArn}/outputs/{outputArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConnect::UpdateFlowOutputResponse');
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
      FlowArn     => 'My__string',
      OutputArn   => 'My__string',
      Description => 'My__string',    # OPTIONAL
      Destination => 'My__string',    # OPTIONAL
      Encryption  => {
        Algorithm => 'aes128',        # values: aes128, aes192, aes256; OPTIONAL
        KeyType   => 'static-key',    # values: static-key; OPTIONAL
        RoleArn   => 'My__string',
        SecretArn => 'My__string',
      },    # OPTIONAL
      MaxLatency       => 1,               # OPTIONAL
      Port             => 1,               # OPTIONAL
      Protocol         => 'zixi-push',     # OPTIONAL
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


=head2 Description => Str

A description of the output. This description appears only on the AWS
Elemental MediaConnect console and will not be seen by the end user.



=head2 Destination => Str

The IP address where you want to send the output.



=head2 Encryption => L<Paws::MediaConnect::UpdateEncryption>

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

Valid values are: C<"zixi-push">, C<"rtp-fec">, C<"rtp">

=head2 SmoothingLatency => Int

The smoothing latency in milliseconds for RTP and RTP-FEC streams.



=head2 StreamId => Str

The stream ID that you want to use for this transport. This parameter
applies only to Zixi-based streams.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFlowOutput in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

