
package Paws::EC2::RevokeClientVpnIngressResult;
  use Moose;
  has Status => (is => 'ro', isa => 'Paws::EC2::ClientVpnAuthorizationRuleStatus', request_name => 'status', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RevokeClientVpnIngressResult

=head1 ATTRIBUTES


=head2 Status => L<Paws::EC2::ClientVpnAuthorizationRuleStatus>

The current state of the authorization rule.


=head2 _request_id => Str


=cut

