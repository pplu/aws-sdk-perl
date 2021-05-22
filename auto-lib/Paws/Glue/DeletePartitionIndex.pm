
package Paws::Glue::DeletePartitionIndex;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has IndexName => (is => 'ro', isa => 'Str', required => 1);
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePartitionIndex');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::DeletePartitionIndexResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DeletePartitionIndex - Arguments for method DeletePartitionIndex on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePartitionIndex on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method DeletePartitionIndex.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePartitionIndex.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $DeletePartitionIndexResponse = $glue->DeletePartitionIndex(
      DatabaseName => 'MyNameString',
      IndexName    => 'MyNameString',
      TableName    => 'MyNameString',
      CatalogId    => 'MyCatalogIdString',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/DeletePartitionIndex>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The catalog ID where the table resides.



=head2 B<REQUIRED> DatabaseName => Str

Specifies the name of a database from which you want to delete a
partition index.



=head2 B<REQUIRED> IndexName => Str

The name of the partition index to be deleted.



=head2 B<REQUIRED> TableName => Str

Specifies the name of a table from which you want to delete a partition
index.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePartitionIndex in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

