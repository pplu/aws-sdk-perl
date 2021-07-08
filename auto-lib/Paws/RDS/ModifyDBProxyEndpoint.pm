
package Paws::RDS::ModifyDBProxyEndpoint;
  use Moose;
  has DBProxyEndpointName => (is => 'ro', isa => 'Str', required => 1);
  has NewDBProxyEndpointName => (is => 'ro', isa => 'Str');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyDBProxyEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::ModifyDBProxyEndpointResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyDBProxyEndpointResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyDBProxyEndpoint - Arguments for method ModifyDBProxyEndpoint on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyDBProxyEndpoint on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method ModifyDBProxyEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyDBProxyEndpoint.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $ModifyDBProxyEndpointResponse = $rds->ModifyDBProxyEndpoint(
      DBProxyEndpointName    => 'MyDBProxyEndpointName',
      NewDBProxyEndpointName => 'MyDBProxyEndpointName',    # OPTIONAL
      VpcSecurityGroupIds    => [ 'MyString', ... ],        # OPTIONAL
    );

    # Results:
    my $DBProxyEndpoint = $ModifyDBProxyEndpointResponse->DBProxyEndpoint;

    # Returns a L<Paws::RDS::ModifyDBProxyEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/ModifyDBProxyEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBProxyEndpointName => Str

The name of the DB proxy sociated with the DB proxy endpoint that you
want to modify.



=head2 NewDBProxyEndpointName => Str

The new identifier for the C<DBProxyEndpoint>. An identifier must begin
with a letter and must contain only ASCII letters, digits, and hyphens;
it can't end with a hyphen or contain two consecutive hyphens.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

The VPC security group IDs for the DB proxy endpoint. When the DB proxy
endpoint uses a different VPC than the original proxy, you also specify
a different set of security group IDs than for the original proxy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyDBProxyEndpoint in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

