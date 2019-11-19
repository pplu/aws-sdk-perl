
package Paws::SavingsPlans::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SavingsPlans::Types qw/SavingsPlans_TagMap/;
  has Tags => (is => 'ro', isa => SavingsPlans_TagMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'type' => 'SavingsPlans_TagMap',
                           'class' => 'Paws::SavingsPlans::TagMap'
                         }
             },
  'NameInRequest' => {
                       'Tags' => 'tags'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SavingsPlans::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => SavingsPlans_TagMap

Information about the tags.


=head2 _request_id => Str


=cut

