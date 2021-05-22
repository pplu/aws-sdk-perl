
package Paws::RDS::DescribeDBProxyEndpoints;
  use Moose;
  has DBProxyEndpointName => (is => 'ro', isa => 'Str');
  has DBProxyName => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBProxyEndpoints');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DescribeDBProxyEndpointsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBProxyEndpointsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeDBProxyEndpoints - Arguments for method DescribeDBProxyEndpoints on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDBProxyEndpoints on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DescribeDBProxyEndpoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDBProxyEndpoints.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $DescribeDBProxyEndpointsResponse = $rds->DescribeDBProxyEndpoints(
      DBProxyEndpointName => 'MyDBProxyEndpointName',    # OPTIONAL
      DBProxyName         => 'MyDBProxyName',            # OPTIONAL
      Filters             => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],                                                 # OPTIONAL
      Marker     => 'MyString',                          # OPTIONAL
      MaxRecords => 1,                                   # OPTIONAL
    );

    # Results:
    my $DBProxyEndpoints = $DescribeDBProxyEndpointsResponse->DBProxyEndpoints;
    my $Marker           = $DescribeDBProxyEndpointsResponse->Marker;

    # Returns a L<Paws::RDS::DescribeDBProxyEndpointsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeDBProxyEndpoints>

=head1 ATTRIBUTES


=head2 DBProxyEndpointName => Str

The name of a DB proxy endpoint to describe. If you omit this
parameter, the output includes information about all DB proxy endpoints
associated with the specified proxy.



=head2 DBProxyName => Str

The name of the DB proxy whose endpoints you want to describe. If you
omit this parameter, the output includes information about all DB proxy
endpoints associated with all your DB proxies.



=head2 Filters => ArrayRef[L<Paws::RDS::Filter>]

This parameter is not currently supported.



=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so that the remaining
results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDBProxyEndpoints in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

