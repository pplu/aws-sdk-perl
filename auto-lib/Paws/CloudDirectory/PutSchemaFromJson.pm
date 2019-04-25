
package Paws::CloudDirectory::PutSchemaFromJson;
  use Moose;
  has Document => (is => 'ro', isa => 'Str', required => 1);
  has SchemaArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-data-partition', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutSchemaFromJson');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/schema/json');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::PutSchemaFromJsonResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::PutSchemaFromJson - Arguments for method PutSchemaFromJson on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutSchemaFromJson on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method PutSchemaFromJson.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutSchemaFromJson.

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    my $PutSchemaFromJsonResponse = $clouddirectory->PutSchemaFromJson(
      Document  => 'MySchemaJsonDocument',
      SchemaArn => 'MyArn',

    );

    # Results:
    my $Arn = $PutSchemaFromJsonResponse->Arn;

    # Returns a L<Paws::CloudDirectory::PutSchemaFromJsonResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/PutSchemaFromJson>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Document => Str

The replacement JSON schema.



=head2 B<REQUIRED> SchemaArn => Str

The ARN of the schema to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutSchemaFromJson in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

