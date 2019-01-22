
package Paws::DocDB::DescribeDBClusterParameters;
  use Moose;
  has DBClusterParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::DocDB::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has Source => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBClusterParameters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDB::DBClusterParameterGroupDetails');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBClusterParametersResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::DescribeDBClusterParameters - Arguments for method DescribeDBClusterParameters on L<Paws::DocDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDBClusterParameters on the
L<Amazon DocumentDB with MongoDB compatibility|Paws::DocDB> service. Use the attributes of this class
as arguments to method DescribeDBClusterParameters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDBClusterParameters.

=head1 SYNOPSIS

    my $rds = Paws->service('DocDB');
    my $DBClusterParameterGroupDetails = $rds->DescribeDBClusterParameters(
      DBClusterParameterGroupName => 'MyString',
      Filters                     => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],    # OPTIONAL
      Marker     => 'MyString',    # OPTIONAL
      MaxRecords => 1,             # OPTIONAL
      Source     => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Marker     = $DBClusterParameterGroupDetails->Marker;
    my $Parameters = $DBClusterParameterGroupDetails->Parameters;

    # Returns a L<Paws::DocDB::DBClusterParameterGroupDetails> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeDBClusterParameters>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBClusterParameterGroupName => Str

The name of a specific DB cluster parameter group to return parameter
details for.

Constraints:

=over

=item *

If provided, must match the name of an existing
C<DBClusterParameterGroup>.

=back




=head2 Filters => ArrayRef[L<Paws::DocDB::Filter>]

This parameter is not currently supported.



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



=head2 Source => Str

A value that indicates to return only parameters for a specific source.
Parameter sources can be C<engine>, C<service>, or C<customer>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDBClusterParameters in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

