# Generated from json/callresult_class.tt

package Paws::Comprehend::StopTrainingEntityRecognizerResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Comprehend::Types qw//;

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::StopTrainingEntityRecognizerResponse

=head1 ATTRIBUTES


=head2 _request_id => Str


=cut

1;