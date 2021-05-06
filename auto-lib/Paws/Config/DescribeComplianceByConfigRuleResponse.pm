
package Paws::Config::DescribeComplianceByConfigRuleResponse;
  use Moose;
  has ComplianceByConfigRules => (is => 'ro', isa => 'ArrayRef[Paws::Config::ComplianceByConfigRule]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeComplianceByConfigRuleResponse

=head1 ATTRIBUTES


=head2 ComplianceByConfigRules => ArrayRef[L<Paws::Config::ComplianceByConfigRule>]

Indicates whether each of the specified AWS Config rules is compliant.


=head2 NextToken => Str

The string that you use in a subsequent request to get the next page of
results in a paginated response.


=head2 _request_id => Str


=cut

1;