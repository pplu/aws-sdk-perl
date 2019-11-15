
package Paws::Config::PutOrganizationConfigRuleResponse;
  use Moose;
  has OrganizationConfigRuleArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::PutOrganizationConfigRuleResponse

=head1 ATTRIBUTES


=head2 OrganizationConfigRuleArn => Str

The Amazon Resource Name (ARN) of an organization config rule.


=head2 _request_id => Str


=cut

1;