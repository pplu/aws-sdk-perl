
package Paws::Glue::GetPartition;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has PartitionValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPartition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetPartitionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetPartition - Arguments for method GetPartition on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPartition on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetPartition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPartition.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetPartitionResponse = $glue->GetPartition(
      DatabaseName    => 'MyNameString',
      PartitionValues => [
        'MyValueString', ...    # max: 1024
      ],
      TableName => 'MyNameString',
      CatalogId => 'MyCatalogIdString',    # OPTIONAL
    );

    # Results:
    my $Partition = $GetPartitionResponse->Partition;

    # Returns a L<Paws::Glue::GetPartitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetPartition>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The ID of the Data Catalog where the partition in question resides. If
none is supplied, the AWS account ID is used by default.



=head2 B<REQUIRED> DatabaseName => Str

The name of the catalog database where the partition resides.



=head2 B<REQUIRED> PartitionValues => ArrayRef[Str|Undef]

The values that define the partition.



=head2 B<REQUIRED> TableName => Str

The name of the partition's table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPartition in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

