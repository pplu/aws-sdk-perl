
package Paws::SES::ListReceiptRuleSetsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RuleSets => (is => 'ro', isa => 'ArrayRef[Paws::SES::ReceiptRuleSetMetadata]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::ListReceiptRuleSetsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token indicating that there are additional receipt rule sets
available to be listed. Pass this token to successive calls of
C<ListReceiptRuleSets> to retrieve up to 100 receipt rule sets at a
time.


=head2 RuleSets => ArrayRef[L<Paws::SES::ReceiptRuleSetMetadata>]

The metadata for the currently active receipt rule set. The metadata
consists of the rule set name and the timestamp of when the rule set
was created.


=head2 _request_id => Str


=cut

