
package Paws::FraudDetector::GetRulesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has RuleDetails => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::RuleDetail]', traits => ['NameInRequest'], request_name => 'ruleDetails' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::GetRulesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The next page token to be used in subsequent requests.


=head2 RuleDetails => ArrayRef[L<Paws::FraudDetector::RuleDetail>]

The details of the requested rule.


=head2 _request_id => Str


=cut

1;