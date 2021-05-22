
package Paws::RedShift::DeleteEndpointAccess;
  use Moose;
  has EndpointName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEndpointAccess');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::EndpointAccess');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteEndpointAccessResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DeleteEndpointAccess - Arguments for method DeleteEndpointAccess on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteEndpointAccess on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DeleteEndpointAccess.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteEndpointAccess.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $EndpointAccess = $redshift->DeleteEndpointAccess(
      EndpointName => 'MyString',

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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DeleteEndpointAccess>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointName => Str

The Redshift-managed VPC endpoint to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteEndpointAccess in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

