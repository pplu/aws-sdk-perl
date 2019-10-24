# Generated from default/object.tt
package Paws::RDSData::ColumnMetadata;
  use Moo;
  use Types::Standard qw/Int Bool Str/;
  use Paws::RDSData::Types qw//;
  has ArrayBaseColumnType => (is => 'ro', isa => Int);
  has IsAutoIncrement => (is => 'ro', isa => Bool);
  has IsCaseSensitive => (is => 'ro', isa => Bool);
  has IsCurrency => (is => 'ro', isa => Bool);
  has IsSigned => (is => 'ro', isa => Bool);
  has Label => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Nullable => (is => 'ro', isa => Int);
  has Precision => (is => 'ro', isa => Int);
  has Scale => (is => 'ro', isa => Int);
  has SchemaName => (is => 'ro', isa => Str);
  has TableName => (is => 'ro', isa => Str);
  has Type => (is => 'ro', isa => Int);
  has TypeName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SchemaName' => {
                                 'type' => 'Str'
                               },
               'Precision' => {
                                'type' => 'Int'
                              },
               'Scale' => {
                            'type' => 'Int'
                          },
               'Label' => {
                            'type' => 'Str'
                          },
               'ArrayBaseColumnType' => {
                                          'type' => 'Int'
                                        },
               'Nullable' => {
                               'type' => 'Int'
                             },
               'Type' => {
                           'type' => 'Int'
                         },
               'IsCaseSensitive' => {
                                      'type' => 'Bool'
                                    },
               'IsAutoIncrement' => {
                                      'type' => 'Bool'
                                    },
               'IsCurrency' => {
                                 'type' => 'Bool'
                               },
               'IsSigned' => {
                               'type' => 'Bool'
                             },
               'TypeName' => {
                               'type' => 'Str'
                             },
               'TableName' => {
                                'type' => 'Str'
                              },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'SchemaName' => 'schemaName',
                       'Precision' => 'precision',
                       'Scale' => 'scale',
                       'Label' => 'label',
                       'ArrayBaseColumnType' => 'arrayBaseColumnType',
                       'Nullable' => 'nullable',
                       'Type' => 'type',
                       'IsCaseSensitive' => 'isCaseSensitive',
                       'IsAutoIncrement' => 'isAutoIncrement',
                       'IsCurrency' => 'isCurrency',
                       'IsSigned' => 'isSigned',
                       'TypeName' => 'typeName',
                       'TableName' => 'tableName',
                       'Name' => 'name'
                     }
}
;
    return $Params_map;
  }


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

Contains the metadata for a column.

=head1 ATTRIBUTES


=head2 ArrayBaseColumnType => Int

  The type of the column.


=head2 IsAutoIncrement => Bool

  A value that indicates whether the column increments automatically.


=head2 IsCaseSensitive => Bool

  A value that indicates whether the column is case-sensitive.


=head2 IsCurrency => Bool

  A value that indicates whether the column contains currency values.


=head2 IsSigned => Bool

  A value that indicates whether an integer column is signed.


=head2 Label => Str

  The label for the column.


=head2 Name => Str

  The name of the column.


=head2 Nullable => Int

  A value that indicates whether the column is nullable.


=head2 Precision => Int

  The precision value of a decimal number column.


=head2 Scale => Int

  The scale value of a decimal number column.


=head2 SchemaName => Str

  The name of the schema that owns the table that includes the column.


=head2 TableName => Str

  The name of the table that includes the column.


=head2 Type => Int

  The type of the column.


=head2 TypeName => Str

  The database-specific data type of the column.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDSData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

