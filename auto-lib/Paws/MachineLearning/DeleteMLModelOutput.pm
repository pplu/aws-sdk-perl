# Generated from json/callresult_class.tt

package Paws::MachineLearning::DeleteMLModelOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MachineLearning::Types qw//;
  has MLModelId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'MLModelId' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::DeleteMLModelOutput

=head1 ATTRIBUTES


=head2 MLModelId => Str

A user-supplied ID that uniquely identifies the C<MLModel>. This value
should be identical to the value of the C<MLModelID> in the request.


=head2 _request_id => Str


=cut

1;