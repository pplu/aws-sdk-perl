package Paws::Glue::PartitionInput;
  use Moose;
  has LastAccessTime => (is => 'ro', isa => 'Str');
  has LastAnalyzedTime => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'Paws::Glue::ParametersMap');
  has StorageDescriptor => (is => 'ro', isa => 'Paws::Glue::StorageDescriptor');
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::PartitionInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::PartitionInput object:

  $service_obj->Method(Att1 => { LastAccessTime => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::PartitionInput object:

  $result = $service_obj->Method(...);
  $result->Att1->LastAccessTime

=head1 DESCRIPTION

The structure used to create and update a partion.

=head1 ATTRIBUTES


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


=head2 Values => ArrayRef[Str|Undef]

  The values of the partition.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

