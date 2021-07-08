
package Paws::EC2::AssociateTrunkInterface;
  use Moose;
  has BranchInterfaceId => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has GreKey => (is => 'ro', isa => 'Int');
  has TrunkInterfaceId => (is => 'ro', isa => 'Str', required => 1);
  has VlanId => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateTrunkInterface');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::AssociateTrunkInterfaceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AssociateTrunkInterface - Arguments for method AssociateTrunkInterface on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateTrunkInterface on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method AssociateTrunkInterface.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateTrunkInterface.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $AssociateTrunkInterfaceResult = $ec2->AssociateTrunkInterface(
      BranchInterfaceId => 'MyNetworkInterfaceId',
      TrunkInterfaceId  => 'MyNetworkInterfaceId',
      ClientToken       => 'MyString',               # OPTIONAL
      DryRun            => 1,                        # OPTIONAL
      GreKey            => 1,                        # OPTIONAL
      VlanId            => 1,                        # OPTIONAL
    );

    # Results:
    my $ClientToken = $AssociateTrunkInterfaceResult->ClientToken;
    my $InterfaceAssociation =
      $AssociateTrunkInterfaceResult->InterfaceAssociation;

    # Returns a L<Paws::EC2::AssociateTrunkInterfaceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/AssociateTrunkInterface>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BranchInterfaceId => Str

The ID of the branch network interface.



=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see How to Ensure
Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 GreKey => Int

The application key. This applies to the GRE protocol.



=head2 B<REQUIRED> TrunkInterfaceId => Str

The ID of the trunk network interface.



=head2 VlanId => Int

The ID of the VLAN. This applies to the VLAN protocol.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateTrunkInterface in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

