# Generated from json/callresult_class.tt

package Paws::Rekognition::GetCelebrityRecognitionResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Rekognition::Types qw/Rekognition_CelebrityRecognition Rekognition_VideoMetadata/;
  has Celebrities => (is => 'ro', isa => ArrayRef[Rekognition_CelebrityRecognition]);
  has JobStatus => (is => 'ro', isa => Str);
  has NextToken => (is => 'ro', isa => Str);
  has StatusMessage => (is => 'ro', isa => Str);
  has VideoMetadata => (is => 'ro', isa => Rekognition_VideoMetadata);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Celebrities' => {
                                  'class' => 'Paws::Rekognition::CelebrityRecognition',
                                  'type' => 'ArrayRef[Rekognition_CelebrityRecognition]'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'VideoMetadata' => {
                                    'class' => 'Paws::Rekognition::VideoMetadata',
                                    'type' => 'Rekognition_VideoMetadata'
                                  },
               'JobStatus' => {
                                'type' => 'Str'
                              },
               'StatusMessage' => {
                                    'type' => 'Str'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::GetCelebrityRecognitionResponse

=head1 ATTRIBUTES


=head2 Celebrities => ArrayRef[Rekognition_CelebrityRecognition]

Array of celebrities recognized in the video.


=head2 JobStatus => Str

The current status of the celebrity recognition job.

Valid values are: C<"IN_PROGRESS">, C<"SUCCEEDED">, C<"FAILED">
=head2 NextToken => Str

If the response is truncated, Amazon Rekognition Video returns this
token that you can use in the subsequent request to retrieve the next
set of celebrities.


=head2 StatusMessage => Str

If the job fails, C<StatusMessage> provides a descriptive error
message.


=head2 VideoMetadata => Rekognition_VideoMetadata

Information about a video that Amazon Rekognition Video analyzed.
C<Videometadata> is returned in every page of paginated responses from
a Amazon Rekognition Video operation.


=head2 _request_id => Str


=cut

1;