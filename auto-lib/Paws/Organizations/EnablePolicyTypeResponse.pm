# Generated from json/callresult_class.tt

package Paws::Organizations::EnablePolicyTypeResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Organizations::Types qw/Organizations_Root/;
  has Root => (is => 'ro', isa => Organizations_Root);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Root' => {
                           'class' => 'Paws::Organizations::Root',
                           'type' => 'Organizations_Root'
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

Paws::Organizations::EnablePolicyTypeResponse

=head1 ATTRIBUTES


=head2 Root => Organizations_Root

A structure that shows the root with the updated list of enabled policy
types.


=head2 _request_id => Str


=cut

1;