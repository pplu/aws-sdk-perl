
package Paws::Glue::GetPartitions;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has Expression => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Segment => (is => 'ro', isa => 'Paws::Glue::Segment');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPartitions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetPartitionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetPartitions - Arguments for method GetPartitions on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPartitions on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetPartitions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPartitions.

As an example:

  $service_obj->GetPartitions(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetPartitions>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The ID of the Data Catalog where the partitions in question reside. If
none is supplied, the AWS account ID is used by default.



=head2 B<REQUIRED> DatabaseName => Str

The name of the catalog database where the partitions reside.



=head2 Expression => Str

An expression filtering the partitions to be returned.



=head2 MaxResults => Int

The maximum number of partitions to return in a single response.



=head2 NextToken => Str

A continuation token, if this is not the first call to retrieve these
partitions.



=head2 Segment => L<Paws::Glue::Segment>

The segment of the table's partitions to scan in this request.



=head2 B<REQUIRED> TableName => Str

The name of the partitions' table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPartitions in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

