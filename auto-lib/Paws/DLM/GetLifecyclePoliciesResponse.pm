
package Paws::DLM::GetLifecyclePoliciesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DLM::Types qw/DLM_LifecyclePolicySummary/;
  has Policies => (is => 'ro', isa => ArrayRef[DLM_LifecyclePolicySummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Policies' => {
                               'class' => 'Paws::DLM::LifecyclePolicySummary',
                               'type' => 'ArrayRef[DLM_LifecyclePolicySummary]'
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

Paws::DLM::GetLifecyclePoliciesResponse

=head1 ATTRIBUTES


=head2 Policies => ArrayRef[DLM_LifecyclePolicySummary]

Summary information about the lifecycle policies.


=head2 _request_id => Str


=cut

