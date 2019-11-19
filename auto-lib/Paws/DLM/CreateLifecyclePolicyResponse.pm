
package Paws::DLM::CreateLifecyclePolicyResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DLM::Types qw//;
  has PolicyId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PolicyId' => {
                               'type' => 'Str'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DLM::CreateLifecyclePolicyResponse

=head1 ATTRIBUTES


=head2 PolicyId => Str

The identifier of the lifecycle policy.


=head2 _request_id => Str


=cut

