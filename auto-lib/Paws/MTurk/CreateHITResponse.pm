# Generated from json/callresult_class.tt

package Paws::MTurk::CreateHITResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MTurk::Types qw/MTurk_HIT/;
  has HIT => (is => 'ro', isa => MTurk_HIT);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'HIT' => {
                          'class' => 'Paws::MTurk::HIT',
                          'type' => 'MTurk_HIT'
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

Paws::MTurk::CreateHITResponse

=head1 ATTRIBUTES


=head2 HIT => MTurk_HIT

Contains the newly created HIT data. For a description of the HIT data
structure as it appears in responses, see the HIT Data Structure
documentation.


=head2 _request_id => Str


=cut

1;