
package Paws::EC2::ReplaceRouteTableAssociation;
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'associationId' , required => 1);
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has RouteTableId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'routeTableId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReplaceRouteTableAssociation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ReplaceRouteTableAssociationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ReplaceRouteTableAssociation - Arguments for method ReplaceRouteTableAssociation on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReplaceRouteTableAssociation on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ReplaceRouteTableAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReplaceRouteTableAssociation.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To replace the route table associated with a subnet
    # This example associates the specified route table with the subnet for the
    # specified route table association.
    my $ReplaceRouteTableAssociationResult = $ec2->ReplaceRouteTableAssociation(
      {
        'AssociationId' => 'rtbassoc-781d0d1a',
        'RouteTableId'  => 'rtb-22574640'
      }
    );

    # Results:
    my $NewAssociationId =
      $ReplaceRouteTableAssociationResult->NewAssociationId;

    # Returns a L<Paws::EC2::ReplaceRouteTableAssociationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ReplaceRouteTableAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssociationId => Str

The association ID.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> RouteTableId => Str

The ID of the new route table to associate with the subnet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ReplaceRouteTableAssociation in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

