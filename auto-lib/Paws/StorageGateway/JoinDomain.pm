
package Paws::StorageGateway::JoinDomain;
  use Moose;
  has DomainControllers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationalUnit => (is => 'ro', isa => 'Str');
  has Password => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'JoinDomain');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::JoinDomainOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::JoinDomain - Arguments for method JoinDomain on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method JoinDomain on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method JoinDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to JoinDomain.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    my $JoinDomainOutput = $storagegateway->JoinDomain(
      DomainName         => 'MyDomainName',
      GatewayARN         => 'MyGatewayARN',
      Password           => 'MyDomainUserPassword',
      UserName           => 'MyDomainUserName',
      DomainControllers  => [ 'MyHost', ... ],         # OPTIONAL
      OrganizationalUnit => 'MyOrganizationalUnit',    # OPTIONAL
    );

    # Results:
    my $GatewayARN = $JoinDomainOutput->GatewayARN;

    # Returns a L<Paws::StorageGateway::JoinDomainOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/JoinDomain>

=head1 ATTRIBUTES


=head2 DomainControllers => ArrayRef[Str|Undef]

List of IPv4 addresses, NetBIOS names, or host names of your domain
server. If you need to specify the port number include it after the
colon (E<ldquo>:E<rdquo>). For example, C<mydc.mydomain.com:389>.



=head2 B<REQUIRED> DomainName => Str

The name of the domain that you want the gateway to join.



=head2 B<REQUIRED> GatewayARN => Str

The Amazon Resource Name (ARN) of the gateway. Use the C<ListGateways>
operation to return a list of gateways for your account and region.



=head2 OrganizationalUnit => Str

The organizational unit (OU) is a container with an Active Directory
that can hold users, groups, computers, and other OUs and this
parameter specifies the OU that the gateway will join within the AD
domain.



=head2 B<REQUIRED> Password => Str

Sets the password of the user who has permission to add the gateway to
the Active Directory domain.



=head2 B<REQUIRED> UserName => Str

Sets the user name of user who has permission to add the gateway to the
Active Directory domain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method JoinDomain in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

