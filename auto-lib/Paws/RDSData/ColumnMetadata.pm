package Paws::RDSData::ColumnMetadata;
  use Moose;
  has ArrayBaseColumnType => (is => 'ro', isa => 'Int', request_name => 'arrayBaseColumnType', traits => ['NameInRequest']);
  has IsAutoIncrement => (is => 'ro', isa => 'Bool', request_name => 'isAutoIncrement', traits => ['NameInRequest']);
  has IsCaseSensitive => (is => 'ro', isa => 'Bool', request_name => 'isCaseSensitive', traits => ['NameInRequest']);
  has IsCurrency => (is => 'ro', isa => 'Bool', request_name => 'isCurrency', traits => ['NameInRequest']);
  has IsSigned => (is => 'ro', isa => 'Bool', request_name => 'isSigned', traits => ['NameInRequest']);
  has Label => (is => 'ro', isa => 'Str', request_name => 'label', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Nullable => (is => 'ro', isa => 'Int', request_name => 'nullable', traits => ['NameInRequest']);
  has Precision => (is => 'ro', isa => 'Int', request_name => 'precision', traits => ['NameInRequest']);
  has Scale => (is => 'ro', isa => 'Int', request_name => 'scale', traits => ['NameInRequest']);
  has SchemaName => (is => 'ro', isa => 'Str', request_name => 'schemaName', traits => ['NameInRequest']);
  has TableName => (is => 'ro', isa => 'Str', request_name => 'tableName', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Int', request_name => 'type', traits => ['NameInRequest']);
  has TypeName => (is => 'ro', isa => 'Str', request_name => 'typeName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDSData::ColumnMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDSData::ColumnMetadata object:

  $service_obj->Method(Att1 => { ArrayBaseColumnType => $value, ..., TypeName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDSData::ColumnMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->ArrayBaseColumnType

=head1 DESCRIPTION

Column Metadata

=head1 ATTRIBUTES


=head2 ArrayBaseColumnType => Int

  Homogenous array base SQL type from java.sql.Types.


=head2 IsAutoIncrement => Bool

  Whether the designated column is automatically numbered


=head2 IsCaseSensitive => Bool

  Whether values in the designated column's case matters


=head2 IsCurrency => Bool

  Whether values in the designated column is a cash value


=head2 IsSigned => Bool

  Whether values in the designated column are signed numbers


=head2 Label => Str

  Usually specified by the SQL AS. If not specified, return column name.


=head2 Name => Str

  Name of the column.


=head2 Nullable => Int

  Indicates the nullability of values in the designated column. One of
columnNoNulls (0), columnNullable (1), columnNullableUnknown (2)


=head2 Precision => Int

  Get the designated column's specified column size.For numeric data,
this is the maximum precision. For character data, this is the length
in characters. For datetime datatypes, this is the length in characters
of the String representation (assuming the maximum allowed precision of
the fractional seconds component). For binary data, this is the length
in bytes. For the ROWID datatype, this is the length in bytes. 0 is
returned for data types where the column size is not applicable.


=head2 Scale => Int

  Designated column's number of digits to right of the decimal point. 0
is returned for data types where the scale is not applicable.


=head2 SchemaName => Str

  Designated column's table's schema


=head2 TableName => Str

  Designated column's table name


=head2 Type => Int

  SQL type from java.sql.Types.


=head2 TypeName => Str

  Database-specific type name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDSData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

