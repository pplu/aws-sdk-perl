
package Paws::PersonalizeRuntime::GetRecommendationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::PersonalizeRuntime::Types qw/PersonalizeRuntime_PredictedItem/;
  has ItemList => (is => 'ro', isa => ArrayRef[PersonalizeRuntime_PredictedItem]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ItemList' => {
                               'class' => 'Paws::PersonalizeRuntime::PredictedItem',
                               'type' => 'ArrayRef[PersonalizeRuntime_PredictedItem]'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ItemList' => 'itemList'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PersonalizeRuntime::GetRecommendationsResponse

=head1 ATTRIBUTES


=head2 ItemList => ArrayRef[PersonalizeRuntime_PredictedItem]

A list of recommendations.


=head2 _request_id => Str


=cut

