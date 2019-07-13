
package Paws::Config::DescribeOrganizationConfigRulesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has OrganizationConfigRules => (is => 'ro', isa => 'ArrayRef[Paws::Config::OrganizationConfigRule]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeOrganizationConfigRulesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 OrganizationConfigRules => ArrayRef[L<Paws::Config::OrganizationConfigRule>]




=head2 _request_id => Str


=cut

1;