
package Paws::DocDB::DescribeDBInstances;
  use Moose;
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::DocDB::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDB::DBInstanceMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBInstancesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::DescribeDBInstances - Arguments for method DescribeDBInstances on L<Paws::DocDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDBInstances on the
L<Amazon DocumentDB with MongoDB compatibility|Paws::DocDB> service. Use the attributes of this class
as arguments to method DescribeDBInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDBInstances.

=head1 SYNOPSIS

    my $rds = Paws->service('DocDB');
    my $DBInstanceMessage = $rds->DescribeDBInstances(
      DBInstanceIdentifier => 'MyString',    # OPTIONAL
      Filters              => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],                                     # OPTIONAL
      Marker     => 'MyString',              # OPTIONAL
      MaxRecords => 1,                       # OPTIONAL
    );

    # Results:
    my $DBInstances = $DBInstanceMessage->DBInstances;
    my $Marker      = $DBInstanceMessage->Marker;

    # Returns a L<Paws::DocDB::DBInstanceMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeDBInstances>

=head1 ATTRIBUTES


=head2 DBInstanceIdentifier => Str

The user-provided instance identifier. If this parameter is specified,
information from only the specific DB instance is returned. This
parameter isn't case sensitive.

Constraints:

=over

=item *

If provided, must match the identifier of an existing C<DBInstance>.

=back




=head2 Filters => ArrayRef[L<Paws::DocDB::Filter>]

A filter that specifies one or more DB instances to describe.

Supported filters:

=over

=item *

C<db-cluster-id> - Accepts DB cluster identifiers and DB cluster Amazon
Resource Names (ARNs). The results list includes only the information
about the DB instances that are associated with the DB clusters that
are identified by these ARNs.

=item *

C<db-instance-id> - Accepts DB instance identifiers and DB instance
ARNs. The results list includes only the information about the DB
instances that are identified by these ARNs.

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

This class forms part of L<Paws>, documenting arguments for method DescribeDBInstances in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

