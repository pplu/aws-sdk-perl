
package Paws::Comprehend::CreateDocumentClassifier;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has DataAccessRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has DocumentClassifierName => (is => 'ro', isa => 'Str', required => 1);
  has InputDataConfig => (is => 'ro', isa => 'Paws::Comprehend::DocumentClassifierInputDataConfig', required => 1);
  has LanguageCode => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDocumentClassifier');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::CreateDocumentClassifierResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::CreateDocumentClassifier - Arguments for method CreateDocumentClassifier on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDocumentClassifier on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method CreateDocumentClassifier.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDocumentClassifier.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $CreateDocumentClassifierResponse =
      $comprehend->CreateDocumentClassifier(
      DataAccessRoleArn      => 'MyIamRoleArn',
      DocumentClassifierName => 'MyComprehendArnName',
      InputDataConfig        => {
        S3Uri => 'MyS3Uri',    # max: 1024

      },
      LanguageCode       => 'en',
      ClientRequestToken => 'MyClientRequestTokenString',    # OPTIONAL
      );

    # Results:
    my $DocumentClassifierArn =
      $CreateDocumentClassifierResponse->DocumentClassifierArn;

    # Returns a L<Paws::Comprehend::CreateDocumentClassifierResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/CreateDocumentClassifier>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique identifier for the request. If you don't set the client
request token, Amazon Comprehend generates one.



=head2 B<REQUIRED> DataAccessRoleArn => Str

The Amazon Resource Name (ARN) of the AWS Identity and Management (IAM)
role that grants Amazon Comprehend read access to your input data.



=head2 B<REQUIRED> DocumentClassifierName => Str

The name of the document classifier.



=head2 B<REQUIRED> InputDataConfig => L<Paws::Comprehend::DocumentClassifierInputDataConfig>

Specifies the format and location of the input data for the job.



=head2 B<REQUIRED> LanguageCode => Str

The language of the input documents. You can specify English ("en") or
Spanish ("es"). All documents must be in the same language.

Valid values are: C<"en">, C<"es">, C<"fr">, C<"de">, C<"it">, C<"pt">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDocumentClassifier in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

