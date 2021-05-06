
package Paws::Config::DescribeConfigRulesResponse;
  use Moose;
  has ConfigRules => (is => 'ro', isa => 'ArrayRef[Paws::Config::ConfigRule]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeConfigRulesResponse

=head1 ATTRIBUTES


=head2 ConfigRules => ArrayRef[L<Paws::Config::ConfigRule>]

The details about your AWS Config rules.


=head2 NextToken => Str

The string that you use in a subsequent request to get the next page of
results in a paginated response.


=head2 _request_id => Str


=cut

1;