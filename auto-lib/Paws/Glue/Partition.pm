package Paws::Glue::Partition;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has LastAccessTime => (is => 'ro', isa => 'Str');
  has LastAnalyzedTime => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'Paws::Glue::ParametersMap');
  has StorageDescriptor => (is => 'ro', isa => 'Paws::Glue::StorageDescriptor');
  has TableName => (is => 'ro', isa => 'Str');
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::Partition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::Partition object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::Partition object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Represents a slice of table data.

=head1 ATTRIBUTES


=head2 CreationTime => Str

  The time at which the partition was created.


=head2 DatabaseName => Str

  The name of the catalog database where the table in question is
located.


=head2 LastAccessTime => Str

  The last time at which the partition was accessed.


=head2 LastAnalyzedTime => Str

  The last time at which column statistics were computed for this
partition.


=head2 Parameters => L<Paws::Glue::ParametersMap>

  These key-value pairs define partition parameters.


=head2 StorageDescriptor => L<Paws::Glue::StorageDescriptor>

  Provides information about the physical location where the partition is
stored.


=head2 TableName => Str

  The name of the table in question.


=head2 Values => ArrayRef[Str|Undef]

  The values of the partition.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

