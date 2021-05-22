
package Paws::EC2::RejectTransitGatewayMulticastDomainAssociations;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TransitGatewayAttachmentId => (is => 'ro', isa => 'Str');
  has TransitGatewayMulticastDomainId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RejectTransitGatewayMulticastDomainAssociations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::RejectTransitGatewayMulticastDomainAssociationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RejectTransitGatewayMulticastDomainAssociations - Arguments for method RejectTransitGatewayMulticastDomainAssociations on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RejectTransitGatewayMulticastDomainAssociations on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method RejectTransitGatewayMulticastDomainAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RejectTransitGatewayMulticastDomainAssociations.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $RejectTransitGatewayMulticastDomainAssociationsResult =
      $ec2->RejectTransitGatewayMulticastDomainAssociations(
      DryRun                     => 1,                                # OPTIONAL
      SubnetIds                  => [ 'MyString', ... ],              # OPTIONAL
      TransitGatewayAttachmentId => 'MyTransitGatewayAttachmentId',   # OPTIONAL
      TransitGatewayMulticastDomainId =>
        'MyTransitGatewayMulticastDomainId',                          # OPTIONAL
      );

    # Results:
    my $Associations =
      $RejectTransitGatewayMulticastDomainAssociationsResult->Associations;

# Returns a L<Paws::EC2::RejectTransitGatewayMulticastDomainAssociationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/RejectTransitGatewayMulticastDomainAssociations>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 SubnetIds => ArrayRef[Str|Undef]

The IDs of the subnets to associate with the transit gateway multicast
domain.



=head2 TransitGatewayAttachmentId => Str

The ID of the transit gateway attachment.



=head2 TransitGatewayMulticastDomainId => Str

The ID of the transit gateway multicast domain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RejectTransitGatewayMulticastDomainAssociations in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

