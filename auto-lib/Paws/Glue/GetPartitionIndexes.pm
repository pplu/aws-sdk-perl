
package Paws::Glue::GetPartitionIndexes;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPartitionIndexes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetPartitionIndexesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetPartitionIndexes - Arguments for method GetPartitionIndexes on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPartitionIndexes on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetPartitionIndexes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPartitionIndexes.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetPartitionIndexesResponse = $glue->GetPartitionIndexes(
      DatabaseName => 'MyNameString',
      TableName    => 'MyNameString',
      CatalogId    => 'MyCatalogIdString',    # OPTIONAL
      NextToken    => 'MyToken',              # OPTIONAL
    );

    # Results:
    my $NextToken = $GetPartitionIndexesResponse->NextToken;
    my $PartitionIndexDescriptorList =
      $GetPartitionIndexesResponse->PartitionIndexDescriptorList;

    # Returns a L<Paws::Glue::GetPartitionIndexesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetPartitionIndexes>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The catalog ID where the table resides.



=head2 B<REQUIRED> DatabaseName => Str

Specifies the name of a database from which you want to retrieve
partition indexes.



=head2 NextToken => Str

A continuation token, included if this is a continuation call.



=head2 B<REQUIRED> TableName => Str

Specifies the name of a table for which you want to retrieve the
partition indexes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPartitionIndexes in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

