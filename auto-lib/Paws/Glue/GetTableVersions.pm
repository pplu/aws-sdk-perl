
package Paws::Glue::GetTableVersions;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTableVersions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetTableVersionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetTableVersions - Arguments for method GetTableVersions on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTableVersions on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetTableVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTableVersions.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetTableVersionsResponse = $glue->GetTableVersions(
      DatabaseName => 'MyNameString',
      TableName    => 'MyNameString',
      CatalogId    => 'MyCatalogIdString',    # OPTIONAL
      MaxResults   => 1,                      # OPTIONAL
      NextToken    => 'MyToken',              # OPTIONAL
    );

    # Results:
    my $NextToken     = $GetTableVersionsResponse->NextToken;
    my $TableVersions = $GetTableVersionsResponse->TableVersions;

    # Returns a L<Paws::Glue::GetTableVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetTableVersions>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The ID of the Data Catalog where the tables reside. If none is
supplied, the AWS account ID is used by default.



=head2 B<REQUIRED> DatabaseName => Str

The database in the catalog in which the table resides. For Hive
compatibility, this name is entirely lowercase.



=head2 MaxResults => Int

The maximum number of table versions to return in one response.



=head2 NextToken => Str

A continuation token, if this is not the first call.



=head2 B<REQUIRED> TableName => Str

The name of the table. For Hive compatibility, this name is entirely
lowercase.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTableVersions in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

