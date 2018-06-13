
package Paws::Glue::GetTables;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has Expression => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTables');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetTablesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetTables - Arguments for method GetTables on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTables on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetTables.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTables.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetTablesResponse = $glue->GetTables(
      DatabaseName => 'MyNameString',
      CatalogId    => 'MyCatalogIdString',    # OPTIONAL
      Expression   => 'MyFilterString',       # OPTIONAL
      MaxResults   => 1,                      # OPTIONAL
      NextToken    => 'MyToken',              # OPTIONAL
    );

    # Results:
    my $NextToken = $GetTablesResponse->NextToken;
    my $TableList = $GetTablesResponse->TableList;

    # Returns a L<Paws::Glue::GetTablesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetTables>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The ID of the Data Catalog where the tables reside. If none is
supplied, the AWS account ID is used by default.



=head2 B<REQUIRED> DatabaseName => Str

The database in the catalog whose tables to list. For Hive
compatibility, this name is entirely lowercase.



=head2 Expression => Str

A regular expression pattern. If present, only those tables whose names
match the pattern are returned.



=head2 MaxResults => Int

The maximum number of tables to return in a single response.



=head2 NextToken => Str

A continuation token, included if this is a continuation call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTables in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

