# Generated from default/object.tt
package Paws::Glue::TableInput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::Glue::Types qw/Glue_StorageDescriptor Glue_Column Glue_ParametersMap/;
  has Description => (is => 'ro', isa => Str);
  has LastAccessTime => (is => 'ro', isa => Str);
  has LastAnalyzedTime => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str, required => 1);
  has Owner => (is => 'ro', isa => Str);
  has Parameters => (is => 'ro', isa => Glue_ParametersMap);
  has PartitionKeys => (is => 'ro', isa => ArrayRef[Glue_Column]);
  has Retention => (is => 'ro', isa => Int);
  has StorageDescriptor => (is => 'ro', isa => Glue_StorageDescriptor);
  has TableType => (is => 'ro', isa => Str);
  has ViewExpandedText => (is => 'ro', isa => Str);
  has ViewOriginalText => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PartitionKeys' => {
                                    'type' => 'ArrayRef[Glue_Column]',
                                    'class' => 'Paws::Glue::Column'
                                  },
               'Owner' => {
                            'type' => 'Str'
                          },
               'Name' => {
                           'type' => 'Str'
                         },
               'Parameters' => {
                                 'type' => 'Glue_ParametersMap',
                                 'class' => 'Paws::Glue::ParametersMap'
                               },
               'ViewOriginalText' => {
                                       'type' => 'Str'
                                     },
               'LastAccessTime' => {
                                     'type' => 'Str'
                                   },
               'Description' => {
                                  'type' => 'Str'
                                },
               'LastAnalyzedTime' => {
                                       'type' => 'Str'
                                     },
               'StorageDescriptor' => {
                                        'type' => 'Glue_StorageDescriptor',
                                        'class' => 'Paws::Glue::StorageDescriptor'
                                      },
               'TableType' => {
                                'type' => 'Str'
                              },
               'Retention' => {
                                'type' => 'Int'
                              },
               'ViewExpandedText' => {
                                       'type' => 'Str'
                                     }
             },
  'IsRequired' => {
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::TableInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::TableInput object:

  $service_obj->Method(Att1 => { Description => $value, ..., ViewOriginalText => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::TableInput object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

A structure used to define a table.

=head1 ATTRIBUTES


=head2 Description => Str

  A description of the table.


=head2 LastAccessTime => Str

  The last time that the table was accessed.


=head2 LastAnalyzedTime => Str

  The last time that column statistics were computed for this table.


=head2 B<REQUIRED> Name => Str

  The table name. For Hive compatibility, this is folded to lowercase
when it is stored.


=head2 Owner => Str

  The table owner.


=head2 Parameters => Glue_ParametersMap

  These key-value pairs define properties associated with the table.


=head2 PartitionKeys => ArrayRef[Glue_Column]

  A list of columns by which the table is partitioned. Only primitive
types are supported as partition keys.

When you create a table used by Amazon Athena, and you do not specify
any C<partitionKeys>, you must at least set the value of
C<partitionKeys> to an empty list. For example:

C<"PartitionKeys": []>


=head2 Retention => Int

  The retention time for this table.


=head2 StorageDescriptor => Glue_StorageDescriptor

  A storage descriptor containing information about the physical storage
of this table.


=head2 TableType => Str

  The type of this table (C<EXTERNAL_TABLE>, C<VIRTUAL_VIEW>, etc.).


=head2 ViewExpandedText => Str

  If the table is a view, the expanded text of the view; otherwise
C<null>.


=head2 ViewOriginalText => Str

  If the table is a view, the original text of the view; otherwise
C<null>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

