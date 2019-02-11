
package Paws::RDS::DescribeDBClusterBacktracks;
  use Moose;
  has BacktrackIdentifier => (is => 'ro', isa => 'Str');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBClusterBacktracks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DBClusterBacktrackMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBClusterBacktracksResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeDBClusterBacktracks - Arguments for method DescribeDBClusterBacktracks on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDBClusterBacktracks on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DescribeDBClusterBacktracks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDBClusterBacktracks.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $DBClusterBacktrackMessage = $rds->DescribeDBClusterBacktracks(
      DBClusterIdentifier => 'MyString',
      BacktrackIdentifier => 'MyString',    # OPTIONAL
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
    my $DBClusterBacktracks = $DBClusterBacktrackMessage->DBClusterBacktracks;
    my $Marker              = $DBClusterBacktrackMessage->Marker;

    # Returns a L<Paws::RDS::DBClusterBacktrackMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeDBClusterBacktracks>

=head1 ATTRIBUTES


=head2 BacktrackIdentifier => Str

If specified, this value is the backtrack identifier of the backtrack
to be described.

Constraints:

=over

=item *

Must contain a valid universally unique identifier (UUID). For more
information about UUIDs, see A Universally Unique Identifier (UUID) URN
Namespace (http://www.ietf.org/rfc/rfc4122.txt).

=back

Example: C<123e4567-e89b-12d3-a456-426655440000>



=head2 B<REQUIRED> DBClusterIdentifier => Str

The DB cluster identifier of the DB cluster to be described. This
parameter is stored as a lowercase string.

Constraints:

=over

=item *

Must contain from 1 to 63 alphanumeric characters or hyphens.

=item *

First character must be a letter.

=item *

Can't end with a hyphen or contain two consecutive hyphens.

=back

Example: C<my-cluster1>



=head2 Filters => ArrayRef[L<Paws::RDS::Filter>]

A filter that specifies one or more DB clusters to describe. Supported
filters include the following:

=over

=item *

C<db-cluster-backtrack-id> - Accepts backtrack identifiers. The results
list includes information about only the backtracks identified by these
identifiers.

=item *

C<db-cluster-backtrack-status> - Accepts any of the following backtrack
status values:

=over

=item *

C<applying>

=item *

C<completed>

=item *

C<failed>

=item *

C<pending>

=back

The results list includes information about only the backtracks
identified by these values. For more information about backtrack status
values, see DBClusterBacktrack.

=back




=head2 Marker => Str

An optional pagination token provided by a previous
DescribeDBClusterBacktracks request. If this parameter is specified,
the response includes only records beyond the marker, up to the value
specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so that the remaining
results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDBClusterBacktracks in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

