# Generated from json/callresult_class.tt

package Paws::Rekognition::CreateStreamProcessorResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Rekognition::Types qw//;
  has StreamProcessorArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'StreamProcessorArn' => {
                                         'type' => 'Str'
                                       }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::CreateStreamProcessorResponse

=head1 ATTRIBUTES


=head2 StreamProcessorArn => Str

ARN for the newly create stream processor.


=head2 _request_id => Str


=cut

1;