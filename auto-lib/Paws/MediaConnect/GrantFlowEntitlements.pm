
package Paws::MediaConnect::GrantFlowEntitlements;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaConnect::Types qw/MediaConnect_GrantEntitlementRequest/;
  has Entitlements => (is => 'ro', isa => ArrayRef[MediaConnect_GrantEntitlementRequest], required => 1, predicate => 1);
  has FlowArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GrantFlowEntitlements');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/flows/{flowArn}/entitlements');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::MediaConnect::GrantFlowEntitlementsResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Entitlements' => 1,
                    'FlowArn' => 1
                  },
  'NameInRequest' => {
                       'Entitlements' => 'entitlements'
                     },
  'types' => {
               'Entitlements' => {
                                   'class' => 'Paws::MediaConnect::GrantEntitlementRequest',
                                   'type' => 'ArrayRef[MediaConnect_GrantEntitlementRequest]'
                                 },
               'FlowArn' => {
                              'type' => 'Str'
                            }
             },
  'ParamInURI' => {
                    'FlowArn' => 'flowArn'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::GrantFlowEntitlements - Arguments for method GrantFlowEntitlements on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GrantFlowEntitlements on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method GrantFlowEntitlements.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GrantFlowEntitlements.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $GrantFlowEntitlementsResponse = $mediaconnect->GrantFlowEntitlements(
      Entitlements => [
        {
          Subscribers                      => [ 'My__string', ... ],
          DataTransferSubscriberFeePercent => 1,                      # OPTIONAL
          Description                      => 'My__string',
          Encryption                       => {
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
          Name => 'My__string',
        },
        ...
      ],
      FlowArn => 'My__string',

    );

    # Results:
    my $Entitlements = $GrantFlowEntitlementsResponse->Entitlements;
    my $FlowArn      = $GrantFlowEntitlementsResponse->FlowArn;

    # Returns a L<Paws::MediaConnect::GrantFlowEntitlementsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/GrantFlowEntitlements>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Entitlements => ArrayRef[MediaConnect_GrantEntitlementRequest]

The list of entitlements that you want to grant.



=head2 B<REQUIRED> FlowArn => Str

The flow that you want to grant entitlements on.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GrantFlowEntitlements in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

