
package Paws::RDS::DescribeDBClusterEndpoints;
  use Moose;
  has DBClusterEndpointIdentifier => (is => 'ro', isa => 'Str');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBClusterEndpoints');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DBClusterEndpointMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBClusterEndpointsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeDBClusterEndpoints - Arguments for method DescribeDBClusterEndpoints on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDBClusterEndpoints on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DescribeDBClusterEndpoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDBClusterEndpoints.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $DBClusterEndpointMessage = $rds->DescribeDBClusterEndpoints(
      DBClusterEndpointIdentifier => 'MyString',    # OPTIONAL
      DBClusterIdentifier         => 'MyString',    # OPTIONAL
      Filters                     => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],                                            # OPTIONAL
      Marker     => 'MyString',                     # OPTIONAL
      MaxRecords => 1,                              # OPTIONAL
    );

    # Results:
    my $DBClusterEndpoints = $DBClusterEndpointMessage->DBClusterEndpoints;
    my $Marker             = $DBClusterEndpointMessage->Marker;

    # Returns a L<Paws::RDS::DBClusterEndpointMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeDBClusterEndpoints>

=head1 ATTRIBUTES


=head2 DBClusterEndpointIdentifier => Str

The identifier of the endpoint to describe. This parameter is stored as
a lowercase string.



=head2 DBClusterIdentifier => Str

The DB cluster identifier of the DB cluster associated with the
endpoint. This parameter is stored as a lowercase string.



=head2 Filters => ArrayRef[L<Paws::RDS::Filter>]

A set of name-value pairs that define which endpoints to include in the
output. The filters are specified as name-value pairs, in the format
C<Name=I<endpoint_type>,Values=I<endpoint_type1>,I<endpoint_type2>,...>.
C<Name> can be one of: C<db-cluster-endpoint-type>,
C<db-cluster-endpoint-custom-type>, C<db-cluster-endpoint-id>,
C<db-cluster-endpoint-status>. C<Values> for the C<
db-cluster-endpoint-type> filter can be one or more of: C<reader>,
C<writer>, C<custom>. C<Values> for the
C<db-cluster-endpoint-custom-type> filter can be one or more of:
C<reader>, C<any>. C<Values> for the C<db-cluster-endpoint-status>
filter can be one or more of: C<available>, C<creating>, C<deleting>,
C<modifying>.



=head2 Marker => Str

An optional pagination token provided by a previous
DescribeDBClusterEndpoints request. If this parameter is specified, the
response includes only records beyond the marker, up to the value
specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so that the remaining
results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDBClusterEndpoints in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

