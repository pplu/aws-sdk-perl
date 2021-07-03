
package Paws::Rekognition::StartTextDetection;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'Paws::Rekognition::StartTextDetectionFilters');
  has JobTag => (is => 'ro', isa => 'Str');
  has NotificationChannel => (is => 'ro', isa => 'Paws::Rekognition::NotificationChannel');
  has Video => (is => 'ro', isa => 'Paws::Rekognition::Video', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartTextDetection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::StartTextDetectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::StartTextDetection - Arguments for method StartTextDetection on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartTextDetection on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method StartTextDetection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartTextDetection.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $StartTextDetectionResponse = $rekognition->StartTextDetection(
      Video => {
        S3Object => {
          Bucket  => 'MyS3Bucket',           # min: 3, max: 255; OPTIONAL
          Name    => 'MyS3ObjectName',       # min: 1, max: 1024; OPTIONAL
          Version => 'MyS3ObjectVersion',    # min: 1, max: 1024; OPTIONAL
        },    # OPTIONAL
      },
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      Filters            => {
        RegionsOfInterest => [
          {
            BoundingBox => {
              Height => 1.0,    # OPTIONAL
              Left   => 1.0,    # OPTIONAL
              Top    => 1.0,    # OPTIONAL
              Width  => 1.0,    # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # max: 10; OPTIONAL
        WordFilter => {
          MinBoundingBoxHeight => 1.0,    # max: 1; OPTIONAL
          MinBoundingBoxWidth  => 1.0,    # max: 1; OPTIONAL
          MinConfidence        => 1.0,    # max: 100; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      JobTag              => 'MyJobTag',    # OPTIONAL
      NotificationChannel => {
        RoleArn     => 'MyRoleArn',
        SNSTopicArn => 'MySNSTopicArn',

      },                                    # OPTIONAL
    );

    # Results:
    my $JobId = $StartTextDetectionResponse->JobId;

    # Returns a L<Paws::Rekognition::StartTextDetectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/StartTextDetection>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Idempotent token used to identify the start request. If you use the
same token with multiple C<StartTextDetection> requests, the same
C<JobId> is returned. Use C<ClientRequestToken> to prevent the same job
from being accidentaly started more than once.



=head2 Filters => L<Paws::Rekognition::StartTextDetectionFilters>

Optional parameters that let you set criteria the text must meet to be
included in your response.



=head2 JobTag => Str

An identifier returned in the completion status published by your
Amazon Simple Notification Service topic. For example, you can use
C<JobTag> to group related jobs and identify them in the completion
notification.



=head2 NotificationChannel => L<Paws::Rekognition::NotificationChannel>





=head2 B<REQUIRED> Video => L<Paws::Rekognition::Video>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartTextDetection in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

