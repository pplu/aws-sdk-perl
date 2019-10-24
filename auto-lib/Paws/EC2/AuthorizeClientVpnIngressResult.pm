
package Paws::EC2::AuthorizeClientVpnIngressResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_ClientVpnAuthorizationRuleStatus/;
  has Status => (is => 'ro', isa => EC2_ClientVpnAuthorizationRuleStatus);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'class' => 'Paws::EC2::ClientVpnAuthorizationRuleStatus',
                             'type' => 'EC2_ClientVpnAuthorizationRuleStatus'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Status' => 'status'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AuthorizeClientVpnIngressResult

=head1 ATTRIBUTES


=head2 Status => EC2_ClientVpnAuthorizationRuleStatus

The current state of the authorization rule.


=head2 _request_id => Str


=cut

