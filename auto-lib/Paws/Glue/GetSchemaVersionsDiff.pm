
package Paws::Glue::GetSchemaVersionsDiff;
  use Moose;
  has FirstSchemaVersionNumber => (is => 'ro', isa => 'Paws::Glue::SchemaVersionNumber', required => 1);
  has SchemaDiffType => (is => 'ro', isa => 'Str', required => 1);
  has SchemaId => (is => 'ro', isa => 'Paws::Glue::SchemaId', required => 1);
  has SecondSchemaVersionNumber => (is => 'ro', isa => 'Paws::Glue::SchemaVersionNumber', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSchemaVersionsDiff');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetSchemaVersionsDiffResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetSchemaVersionsDiff - Arguments for method GetSchemaVersionsDiff on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSchemaVersionsDiff on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetSchemaVersionsDiff.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSchemaVersionsDiff.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetSchemaVersionsDiffResponse = $glue->GetSchemaVersionsDiff(
      FirstSchemaVersionNumber => {
        LatestVersion => 1,    # OPTIONAL
        VersionNumber => 1,    # min: 1, max: 100000; OPTIONAL
      },
      SchemaDiffType => 'SYNTAX_DIFF',
      SchemaId       => {
        RegistryName =>
          'MySchemaRegistryNameString',    # min: 1, max: 255; OPTIONAL
        SchemaArn => 'MyGlueResourceArn',  # min: 1, max: 10240; OPTIONAL
        SchemaName => 'MySchemaRegistryNameString', # min: 1, max: 255; OPTIONAL
      },
      SecondSchemaVersionNumber => {
        LatestVersion => 1,    # OPTIONAL
        VersionNumber => 1,    # min: 1, max: 100000; OPTIONAL
      },

    );

    # Results:
    my $Diff = $GetSchemaVersionsDiffResponse->Diff;

    # Returns a L<Paws::Glue::GetSchemaVersionsDiffResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetSchemaVersionsDiff>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FirstSchemaVersionNumber => L<Paws::Glue::SchemaVersionNumber>

The first of the two schema versions to be compared.



=head2 B<REQUIRED> SchemaDiffType => Str

Refers to C<SYNTAX_DIFF>, which is the currently supported diff type.

Valid values are: C<"SYNTAX_DIFF">

=head2 B<REQUIRED> SchemaId => L<Paws::Glue::SchemaId>

This is a wrapper structure to contain schema identity fields. The
structure contains:

=over

=item *

SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema. One
of C<SchemaArn> or C<SchemaName> has to be provided.

=item *

SchemaId$SchemaName: The name of the schema. One of C<SchemaArn> or
C<SchemaName> has to be provided.

=back




=head2 B<REQUIRED> SecondSchemaVersionNumber => L<Paws::Glue::SchemaVersionNumber>

The second of the two schema versions to be compared.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSchemaVersionsDiff in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

