
package Paws::EC2::ModifyTransitGateway;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has Options => (is => 'ro', isa => 'Paws::EC2::ModifyTransitGatewayOptions');
  has TransitGatewayId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyTransitGateway');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyTransitGatewayResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyTransitGateway - Arguments for method ModifyTransitGateway on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyTransitGateway on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyTransitGateway.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyTransitGateway.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyTransitGatewayResult = $ec2->ModifyTransitGateway(
      TransitGatewayId => 'MyTransitGatewayId',
      Description      => 'MyString',             # OPTIONAL
      DryRun           => 1,                      # OPTIONAL
      Options          => {
        AddTransitGatewayCidrBlocks    => [ 'MyString', ... ],    # OPTIONAL
        AssociationDefaultRouteTableId =>
          'MyTransitGatewayRouteTableId',                         # OPTIONAL
        AutoAcceptSharedAttachments =>
          'enable',    # values: enable, disable; OPTIONAL
        DefaultRouteTableAssociation =>
          'enable',    # values: enable, disable; OPTIONAL
        DefaultRouteTablePropagation =>
          'enable',    # values: enable, disable; OPTIONAL
        DnsSupport => 'enable',    # values: enable, disable; OPTIONAL
        PropagationDefaultRouteTableId =>
          'MyTransitGatewayRouteTableId',    # OPTIONAL
        RemoveTransitGatewayCidrBlocks => [ 'MyString', ... ],    # OPTIONAL
        VpnEcmpSupport => 'enable',    # values: enable, disable; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $TransitGateway = $ModifyTransitGatewayResult->TransitGateway;

    # Returns a L<Paws::EC2::ModifyTransitGatewayResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyTransitGateway>

=head1 ATTRIBUTES


=head2 Description => Str

The description for the transit gateway.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Options => L<Paws::EC2::ModifyTransitGatewayOptions>

The options to modify.



=head2 B<REQUIRED> TransitGatewayId => Str

The ID of the transit gateway.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyTransitGateway in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

