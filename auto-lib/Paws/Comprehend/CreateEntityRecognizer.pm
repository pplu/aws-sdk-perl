
package Paws::Comprehend::CreateEntityRecognizer;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has DataAccessRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has InputDataConfig => (is => 'ro', isa => 'Paws::Comprehend::EntityRecognizerInputDataConfig', required => 1);
  has LanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has RecognizerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEntityRecognizer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::CreateEntityRecognizerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::CreateEntityRecognizer - Arguments for method CreateEntityRecognizer on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEntityRecognizer on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method CreateEntityRecognizer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEntityRecognizer.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $CreateEntityRecognizerResponse = $comprehend->CreateEntityRecognizer(
      DataAccessRoleArn => 'MyIamRoleArn',
      InputDataConfig   => {
        Documents => {
          S3Uri => 'MyS3Uri',    # max: 1024

        },
        EntityTypes => [
          {
            Type => 'MyEntityTypeName',    # max: 64

          },
          ...
        ],
        Annotations => {
          S3Uri => 'MyS3Uri',              # max: 1024

        },    # OPTIONAL
        EntityList => {
          S3Uri => 'MyS3Uri',    # max: 1024

        },    # OPTIONAL
      },
      LanguageCode       => 'en',
      RecognizerName     => 'MyComprehendArnName',
      ClientRequestToken => 'MyClientRequestTokenString',    # OPTIONAL
    );

    # Results:
    my $EntityRecognizerArn =
      $CreateEntityRecognizerResponse->EntityRecognizerArn;

    # Returns a L<Paws::Comprehend::CreateEntityRecognizerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/CreateEntityRecognizer>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique identifier for the request. If you don't set the client
request token, Amazon Comprehend generates one.



=head2 B<REQUIRED> DataAccessRoleArn => Str

The Amazon Resource Name (ARN) of the AWS Identity and Management (IAM)
role that grants Amazon Comprehend read access to your input data.



=head2 B<REQUIRED> InputDataConfig => L<Paws::Comprehend::EntityRecognizerInputDataConfig>

Specifies the format and location of the input data. The S3 bucket
containing the input data must be located in the same region as the
entity recognizer being created.



=head2 B<REQUIRED> LanguageCode => Str

The language of the input documents. All documents must be in the same
language. Only English ("en") is currently supported.

Valid values are: C<"en">, C<"es">, C<"fr">, C<"de">, C<"it">, C<"pt">

=head2 B<REQUIRED> RecognizerName => Str

The name given to the newly created recognizer. Recognizer names can be
a maximum of 256 characters. Alphanumeric characters, hyphens (-) and
underscores (_) are allowed. The name must be unique in the
account/region.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEntityRecognizer in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

