
package Paws::Glue::CreatePartitionIndex;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has PartitionIndex => (is => 'ro', isa => 'Paws::Glue::PartitionIndex', required => 1);
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePartitionIndex');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::CreatePartitionIndexResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreatePartitionIndex - Arguments for method CreatePartitionIndex on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePartitionIndex on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method CreatePartitionIndex.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePartitionIndex.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $CreatePartitionIndexResponse = $glue->CreatePartitionIndex(
      DatabaseName   => 'MyNameString',
      PartitionIndex => {
        IndexName => 'MyNameString',    # min: 1, max: 255
        Keys      => [
          'MyNameString', ...           # min: 1, max: 255
        ],    # min: 1

      },
      TableName => 'MyNameString',
      CatalogId => 'MyCatalogIdString',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/CreatePartitionIndex>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The catalog ID where the table resides.



=head2 B<REQUIRED> DatabaseName => Str

Specifies the name of a database in which you want to create a
partition index.



=head2 B<REQUIRED> PartitionIndex => L<Paws::Glue::PartitionIndex>

Specifies a C<PartitionIndex> structure to create a partition index in
an existing table.



=head2 B<REQUIRED> TableName => Str

Specifies the name of a table in which you want to create a partition
index.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePartitionIndex in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

