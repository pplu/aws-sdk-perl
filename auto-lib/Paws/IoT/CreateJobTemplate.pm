
package Paws::IoT::CreateJobTemplate;
  use Moose;
  has AbortConfig => (is => 'ro', isa => 'Paws::IoT::AbortConfig', traits => ['NameInRequest'], request_name => 'abortConfig');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description', required => 1);
  has Document => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'document');
  has DocumentSource => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'documentSource');
  has JobArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobArn');
  has JobExecutionsRolloutConfig => (is => 'ro', isa => 'Paws::IoT::JobExecutionsRolloutConfig', traits => ['NameInRequest'], request_name => 'jobExecutionsRolloutConfig');
  has JobTemplateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobTemplateId', required => 1);
  has PresignedUrlConfig => (is => 'ro', isa => 'Paws::IoT::PresignedUrlConfig', traits => ['NameInRequest'], request_name => 'presignedUrlConfig');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Tag]', traits => ['NameInRequest'], request_name => 'tags');
  has TimeoutConfig => (is => 'ro', isa => 'Paws::IoT::TimeoutConfig', traits => ['NameInRequest'], request_name => 'timeoutConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateJobTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/job-templates/{jobTemplateId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::CreateJobTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateJobTemplate - Arguments for method CreateJobTemplate on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateJobTemplate on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CreateJobTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateJobTemplate.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $CreateJobTemplateResponse = $iot->CreateJobTemplate(
      Description   => 'MyJobDescription',
      JobTemplateId => 'MyJobTemplateId',
      AbortConfig   => {
        CriteriaList => [
          {
            Action      => 'CANCEL',  # values: CANCEL
            FailureType => 'FAILED',  # values: FAILED, REJECTED, TIMED_OUT, ALL
            MinNumberOfExecutedThings => 1,    # min: 1
            ThresholdPercentage       => 1,    # max: 100

          },
          ...
        ],    # min: 1

      },    # OPTIONAL
      Document                   => 'MyJobDocument',          # OPTIONAL
      DocumentSource             => 'MyJobDocumentSource',    # OPTIONAL
      JobArn                     => 'MyJobArn',               # OPTIONAL
      JobExecutionsRolloutConfig => {
        ExponentialRate => {
          BaseRatePerMinute    => 1,    # min: 1, max: 1000
          IncrementFactor      => 1,    # min: 1, max: 5
          RateIncreaseCriteria => {
            NumberOfNotifiedThings  => 1,    # min: 1; OPTIONAL
            NumberOfSucceededThings => 1,    # min: 1; OPTIONAL
          },

        },    # OPTIONAL
        MaximumPerMinute => 1,    # min: 1; OPTIONAL
      },    # OPTIONAL
      PresignedUrlConfig => {
        ExpiresInSec => 1,              # min: 60, max: 3600; OPTIONAL
        RoleArn      => 'MyRoleArn',    # min: 20, max: 2048; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      TimeoutConfig => {
        InProgressTimeoutInMinutes => 1,    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $JobTemplateArn = $CreateJobTemplateResponse->JobTemplateArn;
    my $JobTemplateId  = $CreateJobTemplateResponse->JobTemplateId;

    # Returns a L<Paws::IoT::CreateJobTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/CreateJobTemplate>

=head1 ATTRIBUTES


=head2 AbortConfig => L<Paws::IoT::AbortConfig>





=head2 B<REQUIRED> Description => Str

A description of the job document.



=head2 Document => Str

The job document. Required if you don't specify a value for
C<documentSource>.



=head2 DocumentSource => Str

An S3 link to the job document to use in the template. Required if you
don't specify a value for C<document>.

If the job document resides in an S3 bucket, you must use a placeholder
link when specifying the document.

The placeholder link is of the following form:

C<${aws:iot:s3-presigned-url:https://s3.amazonaws.com/I<bucket>/I<key>}>

where I<bucket> is your bucket name and I<key> is the object in the
bucket to which you are linking.



=head2 JobArn => Str

The ARN of the job to use as the basis for the job template.



=head2 JobExecutionsRolloutConfig => L<Paws::IoT::JobExecutionsRolloutConfig>





=head2 B<REQUIRED> JobTemplateId => Str

A unique identifier for the job template. We recommend using a UUID.
Alpha-numeric characters, "-", and "_" are valid for use here.



=head2 PresignedUrlConfig => L<Paws::IoT::PresignedUrlConfig>





=head2 Tags => ArrayRef[L<Paws::IoT::Tag>]

Metadata that can be used to manage the job template.



=head2 TimeoutConfig => L<Paws::IoT::TimeoutConfig>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateJobTemplate in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

