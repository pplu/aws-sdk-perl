
package Paws::IoT::GetEffectivePoliciesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_EffectivePolicy/;
  has EffectivePolicies => (is => 'ro', isa => ArrayRef[IoT_EffectivePolicy]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EffectivePolicies' => {
                                        'class' => 'Paws::IoT::EffectivePolicy',
                                        'type' => 'ArrayRef[IoT_EffectivePolicy]'
                                      }
             },
  'NameInRequest' => {
                       'EffectivePolicies' => 'effectivePolicies'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetEffectivePoliciesResponse

=head1 ATTRIBUTES


=head2 EffectivePolicies => ArrayRef[IoT_EffectivePolicy]

The effective policies.


=head2 _request_id => Str


=cut

