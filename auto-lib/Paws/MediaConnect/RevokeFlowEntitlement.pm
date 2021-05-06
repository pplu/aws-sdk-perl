
package Paws::MediaConnect::RevokeFlowEntitlement;
  use Moose;
  has EntitlementArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'entitlementArn', required => 1);
  has FlowArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'flowArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeFlowEntitlement');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/flows/{flowArn}/entitlements/{entitlementArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConnect::RevokeFlowEntitlementResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::RevokeFlowEntitlement - Arguments for method RevokeFlowEntitlement on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RevokeFlowEntitlement on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method RevokeFlowEntitlement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RevokeFlowEntitlement.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $RevokeFlowEntitlementResponse = $mediaconnect->RevokeFlowEntitlement(
      EntitlementArn => 'My__string',
      FlowArn        => 'My__string',

    );

    # Results:
    my $EntitlementArn = $RevokeFlowEntitlementResponse->EntitlementArn;
    my $FlowArn        = $RevokeFlowEntitlementResponse->FlowArn;

    # Returns a L<Paws::MediaConnect::RevokeFlowEntitlementResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/RevokeFlowEntitlement>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EntitlementArn => Str

The ARN of the entitlement that you want to revoke.



=head2 B<REQUIRED> FlowArn => Str

The flow that you want to revoke an entitlement from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RevokeFlowEntitlement in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

