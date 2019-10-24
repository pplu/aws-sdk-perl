# Generated from json/callresult_class.tt

package Paws::MTurk::GetAssignmentResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MTurk::Types qw/MTurk_Assignment MTurk_HIT/;
  has Assignment => (is => 'ro', isa => MTurk_Assignment);
  has HIT => (is => 'ro', isa => MTurk_HIT);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Assignment' => {
                                 'class' => 'Paws::MTurk::Assignment',
                                 'type' => 'MTurk_Assignment'
                               },
               'HIT' => {
                          'class' => 'Paws::MTurk::HIT',
                          'type' => 'MTurk_HIT'
                        }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::MTurk::GetAssignmentResponse

=head1 ATTRIBUTES


=head2 Assignment => MTurk_Assignment

The assignment. The response includes one Assignment element.


=head2 HIT => MTurk_HIT

The HIT associated with this assignment. The response includes one HIT
element.


=head2 _request_id => Str


=cut

1;