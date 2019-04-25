
package Paws::MediaConnect::UpdateFlowEntitlement;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Encryption => (is => 'ro', isa => 'Paws::MediaConnect::UpdateEncryption', traits => ['NameInRequest'], request_name => 'encryption');
  has EntitlementArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'entitlementArn', required => 1);
  has FlowArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'flowArn', required => 1);
  has Subscribers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'subscribers');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFlowEntitlement');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/flows/{flowArn}/entitlements/{entitlementArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConnect::UpdateFlowEntitlementResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::UpdateFlowEntitlement - Arguments for method UpdateFlowEntitlement on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFlowEntitlement on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method UpdateFlowEntitlement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFlowEntitlement.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $UpdateFlowEntitlementResponse = $mediaconnect->UpdateFlowEntitlement(
      EntitlementArn => 'My__string',
      FlowArn        => 'My__string',
      Description    => 'My__string',    # OPTIONAL
      Encryption     => {
        Algorithm => 'aes128',        # values: aes128, aes192, aes256; OPTIONAL
        KeyType   => 'static-key',    # values: static-key; OPTIONAL
        RoleArn   => 'My__string',
        SecretArn => 'My__string',
      },    # OPTIONAL
      Subscribers => [ 'My__string', ... ],    # OPTIONAL
    );

    # Results:
    my $Entitlement = $UpdateFlowEntitlementResponse->Entitlement;
    my $FlowArn     = $UpdateFlowEntitlementResponse->FlowArn;

    # Returns a L<Paws::MediaConnect::UpdateFlowEntitlementResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/UpdateFlowEntitlement>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the entitlement. This description appears only on the
AWS Elemental MediaConnect console and will not be seen by the
subscriber or end user.



=head2 Encryption => L<Paws::MediaConnect::UpdateEncryption>

The type of encryption that will be used on the output associated with
this entitlement.



=head2 B<REQUIRED> EntitlementArn => Str

The ARN of the entitlement that you want to update.



=head2 B<REQUIRED> FlowArn => Str

The flow that is associated with the entitlement that you want to
update.



=head2 Subscribers => ArrayRef[Str|Undef]

The AWS account IDs that you want to share your content with. The
receiving accounts (subscribers) will be allowed to create their own
flow using your content as the source.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFlowEntitlement in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

