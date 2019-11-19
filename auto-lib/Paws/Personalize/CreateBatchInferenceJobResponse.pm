# Generated from json/callresult_class.tt

package Paws::Personalize::CreateBatchInferenceJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw//;
  has BatchInferenceJobArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'BatchInferenceJobArn' => 'batchInferenceJobArn'
                     },
  'types' => {
               'BatchInferenceJobArn' => {
                                           'type' => 'Str'
                                         },
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

Paws::Personalize::CreateBatchInferenceJobResponse

=head1 ATTRIBUTES


=head2 BatchInferenceJobArn => Str

The ARN of the batch inference job.


=head2 _request_id => Str


=cut

1;