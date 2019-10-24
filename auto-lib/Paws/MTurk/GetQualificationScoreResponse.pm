# Generated from json/callresult_class.tt

package Paws::MTurk::GetQualificationScoreResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MTurk::Types qw/MTurk_Qualification/;
  has Qualification => (is => 'ro', isa => MTurk_Qualification);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Qualification' => {
                                    'class' => 'Paws::MTurk::Qualification',
                                    'type' => 'MTurk_Qualification'
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

Paws::MTurk::GetQualificationScoreResponse

=head1 ATTRIBUTES


=head2 Qualification => MTurk_Qualification

The Qualification data structure of the Qualification assigned to a
user, including the Qualification type and the value (score).


=head2 _request_id => Str


=cut

1;