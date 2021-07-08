
package Paws::RedShift::CreateEndpointAccess;
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has EndpointName => (is => 'ro', isa => 'Str', required => 1);
  has ResourceOwner => (is => 'ro', isa => 'Str');
  has SubnetGroupName => (is => 'ro', isa => 'Str', required => 1);
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEndpointAccess');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::EndpointAccess');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateEndpointAccessResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::CreateEndpointAccess - Arguments for method CreateEndpointAccess on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEndpointAccess on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method CreateEndpointAccess.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEndpointAccess.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $EndpointAccess = $redshift->CreateEndpointAccess(
      EndpointName        => 'MyString',
      SubnetGroupName     => 'MyString',
      ClusterIdentifier   => 'MyString',    # OPTIONAL
      ResourceOwner       => 'MyString',    # OPTIONAL
      VpcSecurityGroupIds => [
        'MyString', ...                     # max: 2147483647
      ],    # OPTIONAL
    );

    # Results:
    my $Address            = $EndpointAccess->Address;
    my $ClusterIdentifier  = $EndpointAccess->ClusterIdentifier;
    my $EndpointCreateTime = $EndpointAccess->EndpointCreateTime;
    my $EndpointName       = $EndpointAccess->EndpointName;
    my $EndpointStatus     = $EndpointAccess->EndpointStatus;
    my $Port               = $EndpointAccess->Port;
    my $ResourceOwner      = $EndpointAccess->ResourceOwner;
    my $SubnetGroupName    = $EndpointAccess->SubnetGroupName;
    my $VpcEndpoint        = $EndpointAccess->VpcEndpoint;
    my $VpcSecurityGroups  = $EndpointAccess->VpcSecurityGroups;

    # Returns a L<Paws::RedShift::EndpointAccess> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/CreateEndpointAccess>

=head1 ATTRIBUTES


=head2 ClusterIdentifier => Str

The cluster identifier of the cluster to access.



=head2 B<REQUIRED> EndpointName => Str

The Redshift-managed VPC endpoint name.

An endpoint name must contain 1-30 characters. Valid characters are
A-Z, a-z, 0-9, and hyphen(-). The first character must be a letter. The
name can't contain two consecutive hyphens or end with a hyphen.



=head2 ResourceOwner => Str

The AWS account ID of the owner of the cluster. This is only required
if the cluster is in another AWS account.



=head2 B<REQUIRED> SubnetGroupName => Str

The subnet group from which Amazon Redshift chooses the subnet to
deploy the endpoint.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

The security group that defines the ports, protocols, and sources for
inbound traffic that you are authorizing into your endpoint.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEndpointAccess in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

