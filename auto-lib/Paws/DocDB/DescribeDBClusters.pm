
package Paws::DocDB::DescribeDBClusters;
  use Moose;
  has DBClusterIdentifier => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::DocDB::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBClusters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDB::DBClusterMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBClustersResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::DescribeDBClusters - Arguments for method DescribeDBClusters on L<Paws::DocDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDBClusters on the
L<Amazon DocumentDB with MongoDB compatibility|Paws::DocDB> service. Use the attributes of this class
as arguments to method DescribeDBClusters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDBClusters.

=head1 SYNOPSIS

    my $rds = Paws->service('DocDB');
    my $DBClusterMessage = $rds->DescribeDBClusters(
      DBClusterIdentifier => 'MyString',    # OPTIONAL
      Filters             => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],                                    # OPTIONAL
      Marker     => 'MyString',             # OPTIONAL
      MaxRecords => 1,                      # OPTIONAL
    );

    # Results:
    my $DBClusters = $DBClusterMessage->DBClusters;
    my $Marker     = $DBClusterMessage->Marker;

    # Returns a L<Paws::DocDB::DBClusterMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeDBClusters>

=head1 ATTRIBUTES


=head2 DBClusterIdentifier => Str

The user-provided DB cluster identifier. If this parameter is
specified, information from only the specific DB cluster is returned.
This parameter isn't case sensitive.

Constraints:

=over

=item *

If provided, must match an existing C<DBClusterIdentifier>.

=back




=head2 Filters => ArrayRef[L<Paws::DocDB::Filter>]

A filter that specifies one or more DB clusters to describe.

Supported filters:

=over

=item *

C<db-cluster-id> - Accepts DB cluster identifiers and DB cluster Amazon
Resource Names (ARNs). The results list only includes information about
the DB clusters identified by these ARNs.

=back




=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token (marker) is included in the response so that the remaining
results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDBClusters in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

