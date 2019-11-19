# Generated from json/callargs_class.tt

package Paws::Rekognition::StartFaceSearch;
  use Moo;
  use Types::Standard qw/Str Num/;
  use Paws::Rekognition::Types qw/Rekognition_Video Rekognition_NotificationChannel/;
  has ClientRequestToken => (is => 'ro', isa => Str, predicate => 1);
  has CollectionId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has FaceMatchThreshold => (is => 'ro', isa => Num, predicate => 1);
  has JobTag => (is => 'ro', isa => Str, predicate => 1);
  has NotificationChannel => (is => 'ro', isa => Rekognition_NotificationChannel, predicate => 1);
  has Video => (is => 'ro', isa => Rekognition_Video, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'StartFaceSearch');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Rekognition::StartFaceSearchResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NotificationChannel' => {
                                          'type' => 'Rekognition_NotificationChannel',
                                          'class' => 'Paws::Rekognition::NotificationChannel'
                                        },
               'JobTag' => {
                             'type' => 'Str'
                           },
               'ClientRequestToken' => {
                                         'type' => 'Str'
                                       },
               'Video' => {
                            'type' => 'Rekognition_Video',
                            'class' => 'Paws::Rekognition::Video'
                          },
               'CollectionId' => {
                                   'type' => 'Str'
                                 },
               'FaceMatchThreshold' => {
                                         'type' => 'Num'
                                       }
             },
  'IsRequired' => {
                    'CollectionId' => 1,
                    'Video' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::StartFaceSearch - Arguments for method StartFaceSearch on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartFaceSearch on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method StartFaceSearch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartFaceSearch.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $StartFaceSearchResponse = $rekognition->StartFaceSearch(
      CollectionId => 'MyCollectionId',
      Video        => {
        S3Object => {
          Bucket  => 'MyS3Bucket',           # min: 3, max: 255; OPTIONAL
          Name    => 'MyS3ObjectName',       # min: 1, max: 1024; OPTIONAL
          Version => 'MyS3ObjectVersion',    # min: 1, max: 1024; OPTIONAL
        },    # OPTIONAL
      },
      ClientRequestToken  => 'MyClientRequestToken',    # OPTIONAL
      FaceMatchThreshold  => 1.0,                       # OPTIONAL
      JobTag              => 'MyJobTag',                # OPTIONAL
      NotificationChannel => {
        RoleArn     => 'MyRoleArn',
        SNSTopicArn => 'MySNSTopicArn',

      },                                                # OPTIONAL
    );

    # Results:
    my $JobId = $StartFaceSearchResponse->JobId;

    # Returns a L<Paws::Rekognition::StartFaceSearchResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/StartFaceSearch>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Idempotent token used to identify the start request. If you use the
same token with multiple C<StartFaceSearch> requests, the same C<JobId>
is returned. Use C<ClientRequestToken> to prevent the same job from
being accidently started more than once.



=head2 B<REQUIRED> CollectionId => Str

ID of the collection that contains the faces you want to search for.



=head2 FaceMatchThreshold => Num

The minimum confidence in the person match to return. For example,
don't return any matches where confidence in matches is less than 70%.
The default value is 80%.



=head2 JobTag => Str

An identifier you specify that's returned in the completion
notification that's published to your Amazon Simple Notification
Service topic. For example, you can use C<JobTag> to group related jobs
and identify them in the completion notification.



=head2 NotificationChannel => Rekognition_NotificationChannel

The ARN of the Amazon SNS topic to which you want Amazon Rekognition
Video to publish the completion status of the search.



=head2 B<REQUIRED> Video => Rekognition_Video

The video you want to search. The video must be stored in an Amazon S3
bucket.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartFaceSearch in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

