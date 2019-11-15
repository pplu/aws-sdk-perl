
package Paws::ComprehendMedical::StartEntitiesDetectionV2Job;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has DataAccessRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has InputDataConfig => (is => 'ro', isa => 'Paws::ComprehendMedical::InputDataConfig', required => 1);
  has JobName => (is => 'ro', isa => 'Str');
  has KMSKey => (is => 'ro', isa => 'Str');
  has LanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has OutputDataConfig => (is => 'ro', isa => 'Paws::ComprehendMedical::OutputDataConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartEntitiesDetectionV2Job');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ComprehendMedical::StartEntitiesDetectionV2JobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::StartEntitiesDetectionV2Job - Arguments for method StartEntitiesDetectionV2Job on L<Paws::ComprehendMedical>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartEntitiesDetectionV2Job on the
L<AWS Comprehend Medical|Paws::ComprehendMedical> service. Use the attributes of this class
as arguments to method StartEntitiesDetectionV2Job.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartEntitiesDetectionV2Job.

=head1 SYNOPSIS

    my $comprehendmedical = Paws->service('ComprehendMedical');
    my $StartEntitiesDetectionV2JobResponse =
      $comprehendmedical->StartEntitiesDetectionV2Job(
      DataAccessRoleArn => 'MyIamRoleArn',
      InputDataConfig   => {
        S3Bucket => 'MyS3Bucket',    # min: 3, max: 63
        S3Key    => 'MyS3Key',       # max: 1024; OPTIONAL
      },
      LanguageCode     => 'en',
      OutputDataConfig => {
        S3Bucket => 'MyS3Bucket',    # min: 3, max: 63
        S3Key    => 'MyS3Key',       # max: 1024; OPTIONAL
      },
      ClientRequestToken => 'MyClientRequestTokenString',    # OPTIONAL
      JobName            => 'MyJobName',                     # OPTIONAL
      KMSKey             => 'MyKMSKey',                      # OPTIONAL
      );

    # Results:
    my $JobId = $StartEntitiesDetectionV2JobResponse->JobId;

# Returns a L<Paws::ComprehendMedical::StartEntitiesDetectionV2JobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehendmedical/StartEntitiesDetectionV2Job>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique identifier for the request. If you don't set the client
request token, Amazon Comprehend Medical generates one.



=head2 B<REQUIRED> DataAccessRoleArn => Str

The Amazon Resource Name (ARN) of the AWS Identity and Access
Management (IAM) role that grants Amazon Comprehend Medical read access
to your input data. For more information, see Role-Based Permissions
Required for Asynchronous Operations
(https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions-med.html#auth-role-permissions-med).



=head2 B<REQUIRED> InputDataConfig => L<Paws::ComprehendMedical::InputDataConfig>

Specifies the format and location of the input data for the job.



=head2 JobName => Str

The identifier of the job.



=head2 KMSKey => Str

An AWS Key Management Service key to encrypt your output files. If you
do not specify a key, the files are written in plain text.



=head2 B<REQUIRED> LanguageCode => Str

The language of the input documents. All documents must be in the same
language.

Valid values are: C<"en">

=head2 B<REQUIRED> OutputDataConfig => L<Paws::ComprehendMedical::OutputDataConfig>

Specifies where to send the output files.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartEntitiesDetectionV2Job in L<Paws::ComprehendMedical>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

