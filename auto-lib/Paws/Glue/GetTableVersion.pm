
package Paws::Glue::GetTableVersion;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has TableName => (is => 'ro', isa => 'Str', required => 1);
  has VersionId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTableVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetTableVersionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetTableVersion - Arguments for method GetTableVersion on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTableVersion on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetTableVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTableVersion.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetTableVersionResponse = $glue->GetTableVersion(
      DatabaseName => 'MyNameString',
      TableName    => 'MyNameString',
      CatalogId    => 'MyCatalogIdString',    # OPTIONAL
      VersionId    => 'MyVersionString',      # OPTIONAL
    );

    # Results:
    my $TableVersion = $GetTableVersionResponse->TableVersion;

    # Returns a L<Paws::Glue::GetTableVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetTableVersion>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The ID of the Data Catalog where the tables reside. If none is
supplied, the AWS account ID is used by default.



=head2 B<REQUIRED> DatabaseName => Str

The database in the catalog in which the table resides. For Hive
compatibility, this name is entirely lowercase.



=head2 B<REQUIRED> TableName => Str

The name of the table. For Hive compatibility, this name is entirely
lowercase.



=head2 VersionId => Str

The ID value of the table version to be retrieved. A C<VersionID> is a
string representation of an integer. Each version is incremented by 1.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTableVersion in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

