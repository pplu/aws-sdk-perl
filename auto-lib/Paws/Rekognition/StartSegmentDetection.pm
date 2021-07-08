
package Paws::Rekognition::StartSegmentDetection;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'Paws::Rekognition::StartSegmentDetectionFilters');
  has JobTag => (is => 'ro', isa => 'Str');
  has NotificationChannel => (is => 'ro', isa => 'Paws::Rekognition::NotificationChannel');
  has SegmentTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Video => (is => 'ro', isa => 'Paws::Rekognition::Video', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartSegmentDetection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::StartSegmentDetectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::StartSegmentDetection - Arguments for method StartSegmentDetection on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartSegmentDetection on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method StartSegmentDetection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartSegmentDetection.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $StartSegmentDetectionResponse = $rekognition->StartSegmentDetection(
      SegmentTypes => [
        'TECHNICAL_CUE', ...    # values: TECHNICAL_CUE, SHOT
      ],
      Video => {
        S3Object => {
          Bucket  => 'MyS3Bucket',           # min: 3, max: 255; OPTIONAL
          Name    => 'MyS3ObjectName',       # min: 1, max: 1024; OPTIONAL
          Version => 'MyS3ObjectVersion',    # min: 1, max: 1024; OPTIONAL
        },    # OPTIONAL
      },
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      Filters            => {
        ShotFilter => {
          MinSegmentConfidence => 1.0,    # min: 50, max: 100; OPTIONAL
        },    # OPTIONAL
        TechnicalCueFilter => {
          MinSegmentConfidence => 1.0,    # min: 50, max: 100; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      JobTag              => 'MyJobTag',    # OPTIONAL
      NotificationChannel => {
        RoleArn     => 'MyRoleArn',
        SNSTopicArn => 'MySNSTopicArn',

      },                                    # OPTIONAL
    );

    # Results:
    my $JobId = $StartSegmentDetectionResponse->JobId;

    # Returns a L<Paws::Rekognition::StartSegmentDetectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/StartSegmentDetection>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Idempotent token used to identify the start request. If you use the
same token with multiple C<StartSegmentDetection> requests, the same
C<JobId> is returned. Use C<ClientRequestToken> to prevent the same job
from being accidently started more than once.



=head2 Filters => L<Paws::Rekognition::StartSegmentDetectionFilters>

Filters for technical cue or shot detection.



=head2 JobTag => Str

An identifier you specify that's returned in the completion
notification that's published to your Amazon Simple Notification
Service topic. For example, you can use C<JobTag> to group related jobs
and identify them in the completion notification.



=head2 NotificationChannel => L<Paws::Rekognition::NotificationChannel>

The ARN of the Amazon SNS topic to which you want Amazon Rekognition
Video to publish the completion status of the segment detection
operation.



=head2 B<REQUIRED> SegmentTypes => ArrayRef[Str|Undef]

An array of segment types to detect in the video. Valid values are
TECHNICAL_CUE and SHOT.



=head2 B<REQUIRED> Video => L<Paws::Rekognition::Video>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartSegmentDetection in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

