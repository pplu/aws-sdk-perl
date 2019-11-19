# Generated from json/callresult_class.tt

package Paws::Personalize::DescribeSolutionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw/Personalize_Solution/;
  has Solution => (is => 'ro', isa => Personalize_Solution);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Solution' => {
                               'type' => 'Personalize_Solution',
                               'class' => 'Paws::Personalize::Solution'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Solution' => 'solution'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeSolutionResponse

=head1 ATTRIBUTES


=head2 Solution => Personalize_Solution

An object that describes the solution.


=head2 _request_id => Str


=cut

1;