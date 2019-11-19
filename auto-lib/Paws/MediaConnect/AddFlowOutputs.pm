
package Paws::MediaConnect::AddFlowOutputs;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaConnect::Types qw/MediaConnect_AddOutputRequest/;
  has FlowArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Outputs => (is => 'ro', isa => ArrayRef[MediaConnect_AddOutputRequest], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AddFlowOutputs');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/flows/{flowArn}/outputs');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::MediaConnect::AddFlowOutputsResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'FlowArn' => 'flowArn'
                  },
  'IsRequired' => {
                    'Outputs' => 1,
                    'FlowArn' => 1
                  },
  'NameInRequest' => {
                       'Outputs' => 'outputs'
                     },
  'types' => {
               'Outputs' => {
                              'class' => 'Paws::MediaConnect::AddOutputRequest',
                              'type' => 'ArrayRef[MediaConnect_AddOutputRequest]'
                            },
               'FlowArn' => {
                              'type' => 'Str'
                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::AddFlowOutputs - Arguments for method AddFlowOutputs on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddFlowOutputs on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method AddFlowOutputs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddFlowOutputs.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $AddFlowOutputsResponse = $mediaconnect->AddFlowOutputs(
      FlowArn => 'My__string',
      Outputs => [
        {
          Protocol =>
            'zixi-push',    # values: zixi-push, rtp-fec, rtp, zixi-pull, rist
          CidrAllowList => [ 'My__string', ... ],    # OPTIONAL
          Description   => 'My__string',
          Destination   => 'My__string',
          Encryption    => {
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
          Port             => 1,              # OPTIONAL
          RemoteId         => 'My__string',
          SmoothingLatency => 1,              # OPTIONAL
          StreamId         => 'My__string',
        },
        ...
      ],

    );

    # Results:
    my $FlowArn = $AddFlowOutputsResponse->FlowArn;
    my $Outputs = $AddFlowOutputsResponse->Outputs;

    # Returns a L<Paws::MediaConnect::AddFlowOutputsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/AddFlowOutputs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FlowArn => Str

The flow that you want to add outputs to.



=head2 B<REQUIRED> Outputs => ArrayRef[MediaConnect_AddOutputRequest]

A list of outputs that you want to add.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddFlowOutputs in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

