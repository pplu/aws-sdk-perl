package Paws::Athena::ColumnInfo;
  use Moose;
  has CaseSensitive => (is => 'ro', isa => 'Bool');
  has CatalogName => (is => 'ro', isa => 'Str');
  has Label => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Nullable => (is => 'ro', isa => 'Str');
  has Precision => (is => 'ro', isa => 'Int');
  has Scale => (is => 'ro', isa => 'Int');
  has SchemaName => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::ColumnInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Athena::ColumnInfo object:

  $service_obj->Method(Att1 => { CaseSensitive => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Athena::ColumnInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->CaseSensitive

=head1 DESCRIPTION

Information about the columns in a query execution result.

=head1 ATTRIBUTES


=head2 CaseSensitive => Bool

  Indicates whether values in the column are case-sensitive.


=head2 CatalogName => Str

  The catalog to which the query results belong.


=head2 Label => Str

  A column label.


=head2 B<REQUIRED> Name => Str

  The name of the column.


=head2 Nullable => Str

  Indicates the column's nullable status.


=head2 Precision => Int

  For C<DECIMAL> data types, specifies the total number of digits, up to
38. For performance reasons, we recommend up to 18 digits.


=head2 Scale => Int

  For C<DECIMAL> data types, specifies the total number of digits in the
fractional part of the value. Defaults to 0.


=head2 SchemaName => Str

  The schema name (database name) to which the query results belong.


=head2 TableName => Str

  The table name for the query results.


=head2 B<REQUIRED> Type => Str

  The data type of the column.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

