# Generated from json/callresult_class.tt

package Paws::Glue::PutResourcePolicyResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw//;
  has PolicyHash => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PolicyHash' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::PutResourcePolicyResponse

=head1 ATTRIBUTES


=head2 PolicyHash => Str

A hash of the policy that has just been set. This must be included in a
subsequent call that overwrites or updates this policy.


=head2 _request_id => Str


=cut

1;