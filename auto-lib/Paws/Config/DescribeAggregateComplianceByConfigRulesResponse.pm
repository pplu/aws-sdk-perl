
package Paws::Config::DescribeAggregateComplianceByConfigRulesResponse;
  use Moose;
  has AggregateComplianceByConfigRules => (is => 'ro', isa => 'ArrayRef[Paws::Config::AggregateComplianceByConfigRule]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeAggregateComplianceByConfigRulesResponse

=head1 ATTRIBUTES


=head2 AggregateComplianceByConfigRules => ArrayRef[L<Paws::Config::AggregateComplianceByConfigRule>]

Returns a list of AggregateComplianceByConfigRule object.


=head2 NextToken => Str

The nextToken string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 _request_id => Str


=cut

1;