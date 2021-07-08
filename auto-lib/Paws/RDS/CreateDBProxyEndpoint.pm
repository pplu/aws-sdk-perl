
package Paws::RDS::CreateDBProxyEndpoint;
  use Moose;
  has DBProxyEndpointName => (is => 'ro', isa => 'Str', required => 1);
  has DBProxyName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');
  has TargetRole => (is => 'ro', isa => 'Str');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has VpcSubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBProxyEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::CreateDBProxyEndpointResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBProxyEndpointResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CreateDBProxyEndpoint - Arguments for method CreateDBProxyEndpoint on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDBProxyEndpoint on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method CreateDBProxyEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDBProxyEndpoint.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $CreateDBProxyEndpointResponse = $rds->CreateDBProxyEndpoint(
      DBProxyEndpointName => 'MyDBProxyEndpointName',
      DBProxyName         => 'MyDBProxyName',
      VpcSubnetIds        => [ 'MyString', ... ],
      Tags                => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],    # OPTIONAL
      TargetRole          => 'READ_WRITE',           # OPTIONAL
      VpcSecurityGroupIds => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $DBProxyEndpoint = $CreateDBProxyEndpointResponse->DBProxyEndpoint;

    # Returns a L<Paws::RDS::CreateDBProxyEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CreateDBProxyEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBProxyEndpointName => Str

The name of the DB proxy endpoint to create.



=head2 B<REQUIRED> DBProxyName => Str

The name of the DB proxy associated with the DB proxy endpoint that you
create.



=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]





=head2 TargetRole => Str

A value that indicates whether the DB proxy endpoint can be used for
read/write or read-only operations. The default is C<READ_WRITE>.

Valid values are: C<"READ_WRITE">, C<"READ_ONLY">

=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

The VPC security group IDs for the DB proxy endpoint that you create.
You can specify a different set of security group IDs than for the
original DB proxy. The default is the default security group for the
VPC.



=head2 B<REQUIRED> VpcSubnetIds => ArrayRef[Str|Undef]

The VPC subnet IDs for the DB proxy endpoint that you create. You can
specify a different set of subnet IDs than for the original DB proxy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDBProxyEndpoint in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

