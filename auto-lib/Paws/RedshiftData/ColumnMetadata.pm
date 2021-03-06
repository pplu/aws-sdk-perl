# Generated by default/object.tt
package Paws::RedshiftData::ColumnMetadata;
  use Moose;
  has ColumnDefault => (is => 'ro', isa => 'Str', request_name => 'columnDefault', traits => ['NameInRequest']);
  has IsCaseSensitive => (is => 'ro', isa => 'Bool', request_name => 'isCaseSensitive', traits => ['NameInRequest']);
  has IsCurrency => (is => 'ro', isa => 'Bool', request_name => 'isCurrency', traits => ['NameInRequest']);
  has IsSigned => (is => 'ro', isa => 'Bool', request_name => 'isSigned', traits => ['NameInRequest']);
  has Label => (is => 'ro', isa => 'Str', request_name => 'label', traits => ['NameInRequest']);
  has Length => (is => 'ro', isa => 'Int', request_name => 'length', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Nullable => (is => 'ro', isa => 'Int', request_name => 'nullable', traits => ['NameInRequest']);
  has Precision => (is => 'ro', isa => 'Int', request_name => 'precision', traits => ['NameInRequest']);
  has Scale => (is => 'ro', isa => 'Int', request_name => 'scale', traits => ['NameInRequest']);
  has SchemaName => (is => 'ro', isa => 'Str', request_name => 'schemaName', traits => ['NameInRequest']);
  has TableName => (is => 'ro', isa => 'Str', request_name => 'tableName', traits => ['NameInRequest']);
  has TypeName => (is => 'ro', isa => 'Str', request_name => 'typeName', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftData::ColumnMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedshiftData::ColumnMetadata object:

  $service_obj->Method(Att1 => { ColumnDefault => $value, ..., TypeName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedshiftData::ColumnMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->ColumnDefault

=head1 DESCRIPTION

The properties (metadata) of a column.

=head1 ATTRIBUTES


=head2 ColumnDefault => Str

The default value of the column.


=head2 IsCaseSensitive => Bool

A value that indicates whether the column is case-sensitive.


=head2 IsCurrency => Bool

A value that indicates whether the column contains currency values.


=head2 IsSigned => Bool

A value that indicates whether an integer column is signed.


=head2 Label => Str

The label for the column.


=head2 Length => Int

The length of the column.


=head2 Name => Str

The name of the column.


=head2 Nullable => Int

A value that indicates whether the column is nullable.


=head2 Precision => Int

The precision value of a decimal number column.


=head2 Scale => Int

The scale value of a decimal number column.


=head2 SchemaName => Str

The name of the schema that contains the table that includes the
column.


=head2 TableName => Str

The name of the table that includes the column.


=head2 TypeName => Str

The database-specific data type of the column.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedshiftData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

