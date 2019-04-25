
package Paws::Rekognition::StartFaceDetection;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has FaceAttributes => (is => 'ro', isa => 'Str');
  has JobTag => (is => 'ro', isa => 'Str');
  has NotificationChannel => (is => 'ro', isa => 'Paws::Rekognition::NotificationChannel');
  has Video => (is => 'ro', isa => 'Paws::Rekognition::Video', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartFaceDetection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::StartFaceDetectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::StartFaceDetection - Arguments for method StartFaceDetection on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartFaceDetection on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method StartFaceDetection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartFaceDetection.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $StartFaceDetectionResponse = $rekognition->StartFaceDetection(
      Video => {
        S3Object => {
          Bucket  => 'MyS3Bucket',           # min: 3, max: 255; OPTIONAL
          Name    => 'MyS3ObjectName',       # min: 1, max: 1024; OPTIONAL
          Version => 'MyS3ObjectVersion',    # min: 1, max: 1024; OPTIONAL
        },    # OPTIONAL
      },
      ClientRequestToken  => 'MyClientRequestToken',    # OPTIONAL
      FaceAttributes      => 'DEFAULT',                 # OPTIONAL
      JobTag              => 'MyJobTag',                # OPTIONAL
      NotificationChannel => {
        RoleArn     => 'MyRoleArn',
        SNSTopicArn => 'MySNSTopicArn',

      },                                                # OPTIONAL
    );

    # Results:
    my $JobId = $StartFaceDetectionResponse->JobId;

    # Returns a L<Paws::Rekognition::StartFaceDetectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/StartFaceDetection>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Idempotent token used to identify the start request. If you use the
same token with multiple C<StartFaceDetection> requests, the same
C<JobId> is returned. Use C<ClientRequestToken> to prevent the same job
from being accidently started more than once.



=head2 FaceAttributes => Str

The face attributes you want returned.

C<DEFAULT> - The following subset of facial attributes are returned:
BoundingBox, Confidence, Pose, Quality and Landmarks.

C<ALL> - All facial attributes are returned.

Valid values are: C<"DEFAULT">, C<"ALL">

=head2 JobTag => Str

Unique identifier you specify to identify the job in the completion
status published to the Amazon Simple Notification Service topic.



=head2 NotificationChannel => L<Paws::Rekognition::NotificationChannel>

The ARN of the Amazon SNS topic to which you want Amazon Rekognition
Video to publish the completion status of the face detection operation.



=head2 B<REQUIRED> Video => L<Paws::Rekognition::Video>

The video in which you want to detect faces. The video must be stored
in an Amazon S3 bucket.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartFaceDetection in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

