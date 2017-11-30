
package Paws::CognitoIdp::DescribeRiskConfigurationResponse;
  use Moose;
  has RiskConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::RiskConfigurationType', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::DescribeRiskConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> RiskConfiguration => L<Paws::CognitoIdp::RiskConfigurationType>

The risk configuration.


=head2 _request_id => Str


=cut

1;