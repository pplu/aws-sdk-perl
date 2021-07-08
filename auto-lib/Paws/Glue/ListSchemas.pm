
package Paws::Glue::ListSchemas;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has RegistryId => (is => 'ro', isa => 'Paws::Glue::RegistryId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSchemas');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::ListSchemasResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListSchemas - Arguments for method ListSchemas on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSchemas on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method ListSchemas.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSchemas.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $ListSchemasResponse = $glue->ListSchemas(
      MaxResults => 1,                                # OPTIONAL
      NextToken  => 'MySchemaRegistryTokenString',    # OPTIONAL
      RegistryId => {
        RegistryArn  => 'MyGlueResourceArn',    # min: 1, max: 10240; OPTIONAL
        RegistryName =>
          'MySchemaRegistryNameString',         # min: 1, max: 255; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListSchemasResponse->NextToken;
    my $Schemas   = $ListSchemasResponse->Schemas;

    # Returns a L<Paws::Glue::ListSchemasResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/ListSchemas>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Maximum number of results required per page. If the value is not
supplied, this will be defaulted to 25 per page.



=head2 NextToken => Str

A continuation token, if this is a continuation call.



=head2 RegistryId => L<Paws::Glue::RegistryId>

A wrapper structure that may contain the registry name and Amazon
Resource Name (ARN).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSchemas in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

