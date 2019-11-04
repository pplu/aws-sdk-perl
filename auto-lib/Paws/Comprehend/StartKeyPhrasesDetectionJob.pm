# Generated from json/callargs_class.tt

package Paws::Comprehend::StartKeyPhrasesDetectionJob;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Comprehend::Types qw/Comprehend_OutputDataConfig Comprehend_VpcConfig Comprehend_InputDataConfig/;
  has ClientRequestToken => (is => 'ro', isa => Str, predicate => 1);
  has DataAccessRoleArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has InputDataConfig => (is => 'ro', isa => Comprehend_InputDataConfig, required => 1, predicate => 1);
  has JobName => (is => 'ro', isa => Str, predicate => 1);
  has LanguageCode => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has OutputDataConfig => (is => 'ro', isa => Comprehend_OutputDataConfig, required => 1, predicate => 1);
  has VolumeKmsKeyId => (is => 'ro', isa => Str, predicate => 1);
  has VpcConfig => (is => 'ro', isa => Comprehend_VpcConfig, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'StartKeyPhrasesDetectionJob');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Comprehend::StartKeyPhrasesDetectionJobResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InputDataConfig' => {
                                      'class' => 'Paws::Comprehend::InputDataConfig',
                                      'type' => 'Comprehend_InputDataConfig'
                                    },
               'OutputDataConfig' => {
                                       'class' => 'Paws::Comprehend::OutputDataConfig',
                                       'type' => 'Comprehend_OutputDataConfig'
                                     },
               'JobName' => {
                              'type' => 'Str'
                            },
               'VolumeKmsKeyId' => {
                                     'type' => 'Str'
                                   },
               'ClientRequestToken' => {
                                         'type' => 'Str'
                                       },
               'DataAccessRoleArn' => {
                                        'type' => 'Str'
                                      },
               'VpcConfig' => {
                                'class' => 'Paws::Comprehend::VpcConfig',
                                'type' => 'Comprehend_VpcConfig'
                              },
               'LanguageCode' => {
                                   'type' => 'Str'
                                 }
             },
  'IsRequired' => {
                    'InputDataConfig' => 1,
                    'DataAccessRoleArn' => 1,
                    'LanguageCode' => 1,
                    'OutputDataConfig' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::StartKeyPhrasesDetectionJob - Arguments for method StartKeyPhrasesDetectionJob on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartKeyPhrasesDetectionJob on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method StartKeyPhrasesDetectionJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartKeyPhrasesDetectionJob.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $StartKeyPhrasesDetectionJobResponse =
      $comprehend->StartKeyPhrasesDetectionJob(
      DataAccessRoleArn => 'MyIamRoleArn',
      InputDataConfig   => {
        S3Uri       => 'MyS3Uri',           # max: 1024
        InputFormat => 'ONE_DOC_PER_FILE'
        ,    # values: ONE_DOC_PER_FILE, ONE_DOC_PER_LINE; OPTIONAL
      },
      LanguageCode     => 'en',
      OutputDataConfig => {
        S3Uri    => 'MyS3Uri',       # max: 1024
        KmsKeyId => 'MyKmsKeyId',    # max: 2048; OPTIONAL
      },
      ClientRequestToken => 'MyClientRequestTokenString',    # OPTIONAL
      JobName            => 'MyJobName',                     # OPTIONAL
      VolumeKmsKeyId     => 'MyKmsKeyId',                    # OPTIONAL
      VpcConfig          => {
        SecurityGroupIds => [
          'MySecurityGroupId', ...                           # min: 1, max: 32
        ],                                                   # min: 1, max: 5
        Subnets => [
          'MySubnetId', ...                                  # min: 1, max: 32
        ],                                                   # min: 1, max: 16

      },    # OPTIONAL
      );

    # Results:
    my $JobId     = $StartKeyPhrasesDetectionJobResponse->JobId;
    my $JobStatus = $StartKeyPhrasesDetectionJobResponse->JobStatus;

    # Returns a L<Paws::Comprehend::StartKeyPhrasesDetectionJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/StartKeyPhrasesDetectionJob>

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



=head2 B<REQUIRED> InputDataConfig => Comprehend_InputDataConfig

Specifies the format and location of the input data for the job.



=head2 JobName => Str

The identifier of the job.



=head2 B<REQUIRED> LanguageCode => Str

The language of the input documents. You can specify any of the primary
languages supported by Amazon Comprehend: German ("de"), English
("en"), Spanish ("es"), French ("fr"), Italian ("it"), or Portuguese
("pt"). All documents must be in the same language.

Valid values are: C<"en">, C<"es">, C<"fr">, C<"de">, C<"it">, C<"pt">

=head2 B<REQUIRED> OutputDataConfig => Comprehend_OutputDataConfig

Specifies where to send the output files.



=head2 VolumeKmsKeyId => Str

ID for the AWS Key Management Service (KMS) key that Amazon Comprehend
uses to encrypt data on the storage volume attached to the ML compute
instance(s) that process the analysis job. The VolumeKmsKeyId can be
either of the following formats:

=over

=item *

KMS Key ID: C<"1234abcd-12ab-34cd-56ef-1234567890ab">

=item *

Amazon Resource Name (ARN) of a KMS Key:
C<"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab">

=back




=head2 VpcConfig => Comprehend_VpcConfig

Configuration parameters for an optional private Virtual Private Cloud
(VPC) containing the resources you are using for your key phrases
detection job. For more information, see Amazon VPC
(https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartKeyPhrasesDetectionJob in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

