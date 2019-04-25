
package Paws::EC2::CreateNetworkInterfacePermission;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str');
  has AwsService => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);
  has Permission => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNetworkInterfacePermission');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateNetworkInterfacePermissionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateNetworkInterfacePermission - Arguments for method CreateNetworkInterfacePermission on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateNetworkInterfacePermission on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateNetworkInterfacePermission.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateNetworkInterfacePermission.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateNetworkInterfacePermissionResult =
      $ec2->CreateNetworkInterfacePermission(
      NetworkInterfaceId => 'MyString',
      Permission         => 'INSTANCE-ATTACH',
      AwsAccountId       => 'MyString',          # OPTIONAL
      AwsService         => 'MyString',          # OPTIONAL
      DryRun             => 1,                   # OPTIONAL
      );

    # Results:
    my $InterfacePermission =
      $CreateNetworkInterfacePermissionResult->InterfacePermission;

    # Returns a L<Paws::EC2::CreateNetworkInterfacePermissionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateNetworkInterfacePermission>

=head1 ATTRIBUTES


=head2 AwsAccountId => Str

The AWS account ID.



=head2 AwsService => Str

The AWS service. Currently not supported.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> NetworkInterfaceId => Str

The ID of the network interface.



=head2 B<REQUIRED> Permission => Str

The type of permission to grant.

Valid values are: C<"INSTANCE-ATTACH">, C<"EIP-ASSOCIATE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateNetworkInterfacePermission in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

