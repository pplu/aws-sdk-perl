
package Paws::Glue::UpdateDatabase;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has DatabaseInput => (is => 'ro', isa => 'Paws::Glue::DatabaseInput', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDatabase');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::UpdateDatabaseResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateDatabase - Arguments for method UpdateDatabase on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDatabase on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method UpdateDatabase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDatabase.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $UpdateDatabaseResponse = $glue->UpdateDatabase(
      DatabaseInput => {
        Name        => 'MyNameString',           # min: 1, max: 255
        Description => 'MyDescriptionString',    # max: 2048; OPTIONAL
        LocationUri => 'MyURI',                  # min: 1, max: 1024; OPTIONAL
        Parameters  => {
          'MyKeyString' =>
            'MyParametersMapValue',  # key: min: 1, max: 255, value: max: 512000
        },    # OPTIONAL
      },
      Name      => 'MyNameString',
      CatalogId => 'MyCatalogIdString',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/UpdateDatabase>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The ID of the Data Catalog in which the metadata database resides. If
none is supplied, the AWS account ID is used by default.



=head2 B<REQUIRED> DatabaseInput => L<Paws::Glue::DatabaseInput>

A C<DatabaseInput> object specifying the new definition of the metadata
database in the catalog.



=head2 B<REQUIRED> Name => Str

The name of the database to update in the catalog. For Hive
compatibility, this is folded to lowercase.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDatabase in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

