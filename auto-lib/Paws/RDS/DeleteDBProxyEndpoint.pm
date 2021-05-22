
package Paws::RDS::DeleteDBProxyEndpoint;
  use Moose;
  has DBProxyEndpointName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDBProxyEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DeleteDBProxyEndpointResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDBProxyEndpointResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DeleteDBProxyEndpoint - Arguments for method DeleteDBProxyEndpoint on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDBProxyEndpoint on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DeleteDBProxyEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDBProxyEndpoint.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $DeleteDBProxyEndpointResponse = $rds->DeleteDBProxyEndpoint(
      DBProxyEndpointName => 'MyDBProxyEndpointName',

    );

    # Results:
    my $DBProxyEndpoint = $DeleteDBProxyEndpointResponse->DBProxyEndpoint;

    # Returns a L<Paws::RDS::DeleteDBProxyEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DeleteDBProxyEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBProxyEndpointName => Str

The name of the DB proxy endpoint to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDBProxyEndpoint in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

