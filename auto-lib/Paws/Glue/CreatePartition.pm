
package Paws::Glue::CreatePartition;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has PartitionInput => (is => 'ro', isa => 'Paws::Glue::PartitionInput', required => 1);
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePartition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::CreatePartitionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreatePartition - Arguments for method CreatePartition on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePartition on the 
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method CreatePartition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePartition.

As an example:

  $service_obj->CreatePartition(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 CatalogId => Str

The ID of the catalog in which the partion is to be created. Currently,
this should be the AWS account ID.



=head2 B<REQUIRED> DatabaseName => Str

The name of the metadata database in which the partition is to be
created.



=head2 B<REQUIRED> PartitionInput => L<Paws::Glue::PartitionInput>

A C<PartitionInput> structure defining the partition to be created.



=head2 B<REQUIRED> TableName => Str

The name of the metadata table in which the partition is to be created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePartition in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

