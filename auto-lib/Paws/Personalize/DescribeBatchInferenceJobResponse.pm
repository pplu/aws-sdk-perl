# Generated from json/callresult_class.tt

package Paws::Personalize::DescribeBatchInferenceJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw/Personalize_BatchInferenceJob/;
  has BatchInferenceJob => (is => 'ro', isa => Personalize_BatchInferenceJob);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BatchInferenceJob' => {
                                        'class' => 'Paws::Personalize::BatchInferenceJob',
                                        'type' => 'Personalize_BatchInferenceJob'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'BatchInferenceJob' => 'batchInferenceJob'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeBatchInferenceJobResponse

=head1 ATTRIBUTES


=head2 BatchInferenceJob => Personalize_BatchInferenceJob

Information on the specified batch inference job.


=head2 _request_id => Str


=cut

1;