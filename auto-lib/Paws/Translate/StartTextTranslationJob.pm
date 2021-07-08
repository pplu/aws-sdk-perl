
package Paws::Translate::StartTextTranslationJob;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has DataAccessRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has InputDataConfig => (is => 'ro', isa => 'Paws::Translate::InputDataConfig', required => 1);
  has JobName => (is => 'ro', isa => 'Str');
  has OutputDataConfig => (is => 'ro', isa => 'Paws::Translate::OutputDataConfig', required => 1);
  has ParallelDataNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SourceLanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has TargetLanguageCodes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has TerminologyNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartTextTranslationJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Translate::StartTextTranslationJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Translate::StartTextTranslationJob - Arguments for method StartTextTranslationJob on L<Paws::Translate>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartTextTranslationJob on the
L<Amazon Translate|Paws::Translate> service. Use the attributes of this class
as arguments to method StartTextTranslationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartTextTranslationJob.

=head1 SYNOPSIS

    my $translate = Paws->service('Translate');
    my $StartTextTranslationJobResponse = $translate->StartTextTranslationJob(
      ClientToken       => 'MyClientTokenString',
      DataAccessRoleArn => 'MyIamRoleArn',
      InputDataConfig   => {
        ContentType => 'MyContentType',    # max: 256
        S3Uri       => 'MyS3Uri',          # max: 1024

      },
      OutputDataConfig => {
        S3Uri => 'MyS3Uri',                # max: 1024

      },
      SourceLanguageCode  => 'MyLanguageCodeString',
      TargetLanguageCodes => [
        'MyLanguageCodeString', ...        # min: 2, max: 5
      ],
      JobName           => 'MyJobName',    # OPTIONAL
      ParallelDataNames => [
        'MyResourceName', ...              # min: 1, max: 256
      ],    # OPTIONAL
      TerminologyNames => [
        'MyResourceName', ...    # min: 1, max: 256
      ],    # OPTIONAL
    );

    # Results:
    my $JobId     = $StartTextTranslationJobResponse->JobId;
    my $JobStatus = $StartTextTranslationJobResponse->JobStatus;

    # Returns a L<Paws::Translate::StartTextTranslationJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/translate/StartTextTranslationJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

A unique identifier for the request. This token is auto-generated when
using the Amazon Translate SDK.



=head2 B<REQUIRED> DataAccessRoleArn => Str

The Amazon Resource Name (ARN) of an AWS Identity Access and Management
(IAM) role that grants Amazon Translate read access to your input data.
For more nformation, see identity-and-access-management.



=head2 B<REQUIRED> InputDataConfig => L<Paws::Translate::InputDataConfig>

Specifies the format and S3 location of the input documents for the
translation job.



=head2 JobName => Str

The name of the batch translation job to be performed.



=head2 B<REQUIRED> OutputDataConfig => L<Paws::Translate::OutputDataConfig>

Specifies the S3 folder to which your job output will be saved.



=head2 ParallelDataNames => ArrayRef[Str|Undef]

The names of the parallel data resources to use in the batch
translation job. For a list of available parallel data resources, use
the ListParallelData operation.



=head2 B<REQUIRED> SourceLanguageCode => Str

The language code of the input language. For a list of language codes,
see what-is-languages.

Amazon Translate does not automatically detect a source language during
batch translation jobs.



=head2 B<REQUIRED> TargetLanguageCodes => ArrayRef[Str|Undef]

The language code of the output language.



=head2 TerminologyNames => ArrayRef[Str|Undef]

The name of the terminology to use in the batch translation job. For a
list of available terminologies, use the ListTerminologies operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartTextTranslationJob in L<Paws::Translate>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

