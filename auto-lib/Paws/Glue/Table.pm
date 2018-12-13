package Paws::Glue::Table;
  use Moose;
  has CreatedBy => (is => 'ro', isa => 'Str');
  has CreateTime => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has LastAccessTime => (is => 'ro', isa => 'Str');
  has LastAnalyzedTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Owner => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'Paws::Glue::ParametersMap');
  has PartitionKeys => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Column]');
  has Retention => (is => 'ro', isa => 'Int');
  has StorageDescriptor => (is => 'ro', isa => 'Paws::Glue::StorageDescriptor');
  has TableType => (is => 'ro', isa => 'Str');
  has UpdateTime => (is => 'ro', isa => 'Str');
  has ViewExpandedText => (is => 'ro', isa => 'Str');
  has ViewOriginalText => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::Table

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::Table object:

  $service_obj->Method(Att1 => { CreatedBy => $value, ..., ViewOriginalText => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::Table object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedBy

=head1 DESCRIPTION

Represents a collection of related data organized in columns and rows.

=head1 ATTRIBUTES


=head2 CreatedBy => Str

  Person or entity who created the table.


=head2 CreateTime => Str

  Time when the table definition was created in the Data Catalog.


=head2 DatabaseName => Str

  Name of the metadata database where the table metadata resides. For
Hive compatibility, this must be all lowercase.


=head2 Description => Str

  Description of the table.


=head2 LastAccessTime => Str

  Last time the table was accessed. This is usually taken from HDFS, and
may not be reliable.


=head2 LastAnalyzedTime => Str

  Last time column statistics were computed for this table.


=head2 B<REQUIRED> Name => Str

  Name of the table. For Hive compatibility, this must be entirely
lowercase.


=head2 Owner => Str

  Owner of the table.


=head2 Parameters => L<Paws::Glue::ParametersMap>

  These key-value pairs define properties associated with the table.


=head2 PartitionKeys => ArrayRef[L<Paws::Glue::Column>]

  A list of columns by which the table is partitioned. Only primitive
types are supported as partition keys.

When creating a table used by Athena, and you do not specify any
C<partitionKeys>, you must at least set the value of C<partitionKeys>
to an empty list. For example:

C<"PartitionKeys": []>


=head2 Retention => Int

  Retention time for this table.


=head2 StorageDescriptor => L<Paws::Glue::StorageDescriptor>

  A storage descriptor containing information about the physical storage
of this table.


=head2 TableType => Str

  The type of this table (C<EXTERNAL_TABLE>, C<VIRTUAL_VIEW>, etc.).


=head2 UpdateTime => Str

  Last time the table was updated.


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

