
package Paws::Glue::GetPartitions;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has Expression => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Segment => (is => 'ro', isa => 'Paws::Glue::Segment');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPartitions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetPartitionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetPartitions - Arguments for method GetPartitions on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPartitions on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetPartitions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPartitions.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetPartitionsResponse = $glue->GetPartitions(
      DatabaseName => 'MyNameString',
      TableName    => 'MyNameString',
      CatalogId    => 'MyCatalogIdString',    # OPTIONAL
      Expression   => 'MyPredicateString',    # OPTIONAL
      MaxResults   => 1,                      # OPTIONAL
      NextToken    => 'MyToken',              # OPTIONAL
      Segment      => {
        SegmentNumber => 1,
        TotalSegments => 1,                   # min: 1, max: 10

      },    # OPTIONAL
    );

    # Results:
    my $NextToken  = $GetPartitionsResponse->NextToken;
    my $Partitions = $GetPartitionsResponse->Partitions;

    # Returns a L<Paws::Glue::GetPartitionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetPartitions>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The ID of the Data Catalog where the partitions in question reside. If
none is supplied, the AWS account ID is used by default.



=head2 B<REQUIRED> DatabaseName => Str

The name of the catalog database where the partitions reside.



=head2 Expression => Str

An expression filtering the partitions to be returned.

The expression uses SQL syntax similar to the SQL C<WHERE> filter
clause. The SQL statement parser JSQLParser
(http://jsqlparser.sourceforge.net/home.php) parses the expression.

I<Operators>: The following are the operators that you can use in the
C<Expression> API call:

=over

=item E<61>

Checks if the values of the two operands are equal or not; if yes, then
the condition becomes true.

Example: Assume 'variable a' holds 10 and 'variable b' holds 20.

(a = b) is not true.

=item E<lt> E<gt>

Checks if the values of two operands are equal or not; if the values
are not equal, then the condition becomes true.

Example: (a E<lt> E<gt> b) is true.

=item E<gt>

Checks if the value of the left operand is greater than the value of
the right operand; if yes, then the condition becomes true.

Example: (a E<gt> b) is not true.

=item E<lt>

Checks if the value of the left operand is less than the value of the
right operand; if yes, then the condition becomes true.

Example: (a E<lt> b) is true.

=item E<gt>=

Checks if the value of the left operand is greater than or equal to the
value of the right operand; if yes, then the condition becomes true.

Example: (a E<gt>= b) is not true.

=item E<lt>=

Checks if the value of the left operand is less than or equal to the
value of the right operand; if yes, then the condition becomes true.

Example: (a E<lt>= b) is true.

=item AND, OR, IN, BETWEEN, LIKE, NOT, IS NULL

Logical operators.

=back

I<Supported Partition Key Types>: The following are the the supported
partition keys.

=over

=item *

C<string>

=item *

C<date>

=item *

C<timestamp>

=item *

C<int>

=item *

C<bigint>

=item *

C<long>

=item *

C<tinyint>

=item *

C<smallint>

=item *

C<decimal>

=back

If an invalid type is encountered, an exception is thrown.

The following list shows the valid operators on each type. When you
define a crawler, the C<partitionKey> type is created as a C<STRING>,
to be compatible with the catalog partitions.

I<Sample API Call>:



=head2 MaxResults => Int

The maximum number of partitions to return in a single response.



=head2 NextToken => Str

A continuation token, if this is not the first call to retrieve these
partitions.



=head2 Segment => L<Paws::Glue::Segment>

The segment of the table's partitions to scan in this request.



=head2 B<REQUIRED> TableName => Str

The name of the partitions' table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPartitions in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

