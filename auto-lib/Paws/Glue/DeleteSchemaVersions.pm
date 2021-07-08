
package Paws::Glue::DeleteSchemaVersions;
  use Moose;
  has SchemaId => (is => 'ro', isa => 'Paws::Glue::SchemaId', required => 1);
  has Versions => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSchemaVersions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::DeleteSchemaVersionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DeleteSchemaVersions - Arguments for method DeleteSchemaVersions on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSchemaVersions on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method DeleteSchemaVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSchemaVersions.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $DeleteSchemaVersionsResponse = $glue->DeleteSchemaVersions(
      SchemaId => {
        RegistryName =>
          'MySchemaRegistryNameString',    # min: 1, max: 255; OPTIONAL
        SchemaArn  => 'MyGlueResourceArn', # min: 1, max: 10240; OPTIONAL
        SchemaName => 'MySchemaRegistryNameString', # min: 1, max: 255; OPTIONAL
      },
      Versions => 'MyVersionsString',

    );

    # Results:
    my $SchemaVersionErrors =
      $DeleteSchemaVersionsResponse->SchemaVersionErrors;

    # Returns a L<Paws::Glue::DeleteSchemaVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/DeleteSchemaVersions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SchemaId => L<Paws::Glue::SchemaId>

This is a wrapper structure that may contain the schema name and Amazon
Resource Name (ARN).



=head2 B<REQUIRED> Versions => Str

A version range may be supplied which may be of the format:

=over

=item *

a single version number, 5

=item *

a range, 5-8 : deletes versions 5, 6, 7, 8

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSchemaVersions in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

