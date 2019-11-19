# Generated from json/callresult_class.tt

package Paws::Rekognition::DetectTextResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Rekognition::Types qw/Rekognition_TextDetection/;
  has TextDetections => (is => 'ro', isa => ArrayRef[Rekognition_TextDetection]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TextDetections' => {
                                     'class' => 'Paws::Rekognition::TextDetection',
                                     'type' => 'ArrayRef[Rekognition_TextDetection]'
                                   }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DetectTextResponse

=head1 ATTRIBUTES


=head2 TextDetections => ArrayRef[Rekognition_TextDetection]

An array of text that was detected in the input image.


=head2 _request_id => Str


=cut

1;