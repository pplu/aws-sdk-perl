
package Paws::EC2::ReplaceNetworkAclAssociation;
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'associationId' , required => 1);
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has NetworkAclId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'networkAclId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReplaceNetworkAclAssociation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ReplaceNetworkAclAssociationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ReplaceNetworkAclAssociation - Arguments for method ReplaceNetworkAclAssociation on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReplaceNetworkAclAssociation on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ReplaceNetworkAclAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReplaceNetworkAclAssociation.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To replace the network ACL associated with a subnet
    # This example associates the specified network ACL with the subnet for the
    # specified network ACL association.
    my $ReplaceNetworkAclAssociationResult = $ec2->ReplaceNetworkAclAssociation(
      {
        'AssociationId' => 'aclassoc-e5b95c8c',
        'NetworkAclId'  => 'acl-5fb85d36'
      }
    );

    # Results:
    my $NewAssociationId =
      $ReplaceNetworkAclAssociationResult->NewAssociationId;

    # Returns a L<Paws::EC2::ReplaceNetworkAclAssociationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ReplaceNetworkAclAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssociationId => Str

The ID of the current association between the original network ACL and
the subnet.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> NetworkAclId => Str

The ID of the new network ACL to associate with the subnet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ReplaceNetworkAclAssociation in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

