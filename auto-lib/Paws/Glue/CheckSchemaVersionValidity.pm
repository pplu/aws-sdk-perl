
package Paws::Glue::CheckSchemaVersionValidity;
  use Moose;
  has DataFormat => (is => 'ro', isa => 'Str', required => 1);
  has SchemaDefinition => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CheckSchemaVersionValidity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::CheckSchemaVersionValidityResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CheckSchemaVersionValidity - Arguments for method CheckSchemaVersionValidity on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CheckSchemaVersionValidity on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method CheckSchemaVersionValidity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CheckSchemaVersionValidity.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $CheckSchemaVersionValidityResponse = $glue->CheckSchemaVersionValidity(
      DataFormat       => 'AVRO',
      SchemaDefinition => 'MySchemaDefinitionString',

    );

    # Results:
    my $Error = $CheckSchemaVersionValidityResponse->Error;
    my $Valid = $CheckSchemaVersionValidityResponse->Valid;

    # Returns a L<Paws::Glue::CheckSchemaVersionValidityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/CheckSchemaVersionValidity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataFormat => Str

The data format of the schema definition. Currently C<AVRO> and C<JSON>
are supported.

Valid values are: C<"AVRO">, C<"JSON">

=head2 B<REQUIRED> SchemaDefinition => Str

The definition of the schema that has to be validated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CheckSchemaVersionValidity in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

