
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

The C<nextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 OrganizationConfigRules => ArrayRef[L<Paws::Config::OrganizationConfigRule>]

Retuns a list C<OrganizationConfigRule> objects.


=head2 _request_id => Str


=cut

1;