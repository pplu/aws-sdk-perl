
package Paws::Comprehend::StartEntitiesDetectionJob;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has DataAccessRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has EntityRecognizerArn => (is => 'ro', isa => 'Str');
  has InputDataConfig => (is => 'ro', isa => 'Paws::Comprehend::InputDataConfig', required => 1);
  has JobName => (is => 'ro', isa => 'Str');
  has LanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has OutputDataConfig => (is => 'ro', isa => 'Paws::Comprehend::OutputDataConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartEntitiesDetectionJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::StartEntitiesDetectionJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::StartEntitiesDetectionJob - Arguments for method StartEntitiesDetectionJob on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartEntitiesDetectionJob on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method StartEntitiesDetectionJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartEntitiesDetectionJob.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $StartEntitiesDetectionJobResponse =
      $comprehend->StartEntitiesDetectionJob(
      DataAccessRoleArn => 'MyIamRoleArn',
      InputDataConfig   => {
        S3Uri       => 'MyS3Uri',           # max: 1024
        InputFormat => 'ONE_DOC_PER_FILE'
        ,    # values: ONE_DOC_PER_FILE, ONE_DOC_PER_LINE; OPTIONAL
      },
      LanguageCode     => 'en',
      OutputDataConfig => {
        S3Uri => 'MyS3Uri',    # max: 1024

      },
      ClientRequestToken  => 'MyClientRequestTokenString',    # OPTIONAL
      EntityRecognizerArn => 'MyEntityRecognizerArn',         # OPTIONAL
      JobName             => 'MyJobName',                     # OPTIONAL
      );

    # Results:
    my $JobId     = $StartEntitiesDetectionJobResponse->JobId;
    my $JobStatus = $StartEntitiesDetectionJobResponse->JobStatus;

    # Returns a L<Paws::Comprehend::StartEntitiesDetectionJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/StartEntitiesDetectionJob>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique identifier for the request. If you don't set the client
request token, Amazon Comprehend generates one.



=head2 B<REQUIRED> DataAccessRoleArn => Str

The Amazon Resource Name (ARN) of the AWS Identity and Access
Management (IAM) role that grants Amazon Comprehend read access to your
input data. For more information, see
https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions
(https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions).



=head2 EntityRecognizerArn => Str

The Amazon Resource Name (ARN) that identifies the specific entity
recognizer to be used by the C<StartEntitiesDetectionJob>. This ARN is
optional and is only used for a custom entity recognition job.



=head2 B<REQUIRED> InputDataConfig => L<Paws::Comprehend::InputDataConfig>

Specifies the format and location of the input data for the job.



=head2 JobName => Str

The identifier of the job.



=head2 B<REQUIRED> LanguageCode => Str

The language of the input documents. All documents must be in the same
language. You can specify any of the languages supported by Amazon
Comprehend: English ("en"), Spanish ("es"), French ("fr"), German
("de"), Italian ("it"), or Portuguese ("pt"). If custom entities
recognition is used, this parameter is ignored and the language used
for training the model is used instead.

Valid values are: C<"en">, C<"es">, C<"fr">, C<"de">, C<"it">, C<"pt">

=head2 B<REQUIRED> OutputDataConfig => L<Paws::Comprehend::OutputDataConfig>

Specifies where to send the output files.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartEntitiesDetectionJob in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

