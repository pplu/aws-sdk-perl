
package Paws::Glue::BatchDeleteTableVersion;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has TableName => (is => 'ro', isa => 'Str', required => 1);
  has VersionIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDeleteTableVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::BatchDeleteTableVersionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchDeleteTableVersion - Arguments for method BatchDeleteTableVersion on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDeleteTableVersion on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method BatchDeleteTableVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDeleteTableVersion.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $BatchDeleteTableVersionResponse = $glue->BatchDeleteTableVersion(
      DatabaseName => 'MyNameString',
      TableName    => 'MyNameString',
      VersionIds   => [
        'MyVersionString', ...    # min: 1, max: 255
      ],
      CatalogId => 'MyCatalogIdString',    # OPTIONAL
    );

    # Results:
    my $Errors = $BatchDeleteTableVersionResponse->Errors;

    # Returns a L<Paws::Glue::BatchDeleteTableVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/BatchDeleteTableVersion>

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



=head2 B<REQUIRED> VersionIds => ArrayRef[Str|Undef]

A list of the IDs of versions to be deleted. A C<VersionId> is a string
representation of an integer. Each version is incremented by 1.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDeleteTableVersion in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

