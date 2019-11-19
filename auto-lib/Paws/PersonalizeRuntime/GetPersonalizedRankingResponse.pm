
package Paws::PersonalizeRuntime::GetPersonalizedRankingResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::PersonalizeRuntime::Types qw/PersonalizeRuntime_PredictedItem/;
  has PersonalizedRanking => (is => 'ro', isa => ArrayRef[PersonalizeRuntime_PredictedItem]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PersonalizedRanking' => {
                                          'class' => 'Paws::PersonalizeRuntime::PredictedItem',
                                          'type' => 'ArrayRef[PersonalizeRuntime_PredictedItem]'
                                        },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'PersonalizedRanking' => 'personalizedRanking'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PersonalizeRuntime::GetPersonalizedRankingResponse

=head1 ATTRIBUTES


=head2 PersonalizedRanking => ArrayRef[PersonalizeRuntime_PredictedItem]

A list of items in order of most likely interest to the user.


=head2 _request_id => Str


=cut

