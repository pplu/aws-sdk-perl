
package Paws::DLM::GetLifecyclePolicyResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DLM::Types qw/DLM_LifecyclePolicy/;
  has Policy => (is => 'ro', isa => DLM_LifecyclePolicy);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Policy' => {
                             'class' => 'Paws::DLM::LifecyclePolicy',
                             'type' => 'DLM_LifecyclePolicy'
                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DLM::GetLifecyclePolicyResponse

=head1 ATTRIBUTES


=head2 Policy => DLM_LifecyclePolicy

Detailed information about the lifecycle policy.


=head2 _request_id => Str


=cut

