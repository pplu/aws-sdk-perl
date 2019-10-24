# Generated from json/callresult_class.tt

package Paws::Organizations::DescribePolicyResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Organizations::Types qw/Organizations_Policy/;
  has Policy => (is => 'ro', isa => Organizations_Policy);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Policy' => {
                             'class' => 'Paws::Organizations::Policy',
                             'type' => 'Organizations_Policy'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Organizations::DescribePolicyResponse

=head1 ATTRIBUTES


=head2 Policy => Organizations_Policy

A structure that contains details about the specified policy.


=head2 _request_id => Str


=cut

1;