
package Paws::SES::DescribeActiveReceiptRuleSetResponse;
  use Moose;
  has Metadata => (is => 'ro', isa => 'Paws::SES::ReceiptRuleSetMetadata');
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::SES::ReceiptRule]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::DescribeActiveReceiptRuleSetResponse

=head1 ATTRIBUTES


=head2 Metadata => L<Paws::SES::ReceiptRuleSetMetadata>

The metadata for the currently active receipt rule set. The metadata
consists of the rule set name and a timestamp of when the rule set was
created.


=head2 Rules => ArrayRef[L<Paws::SES::ReceiptRule>]

The receipt rules that belong to the active rule set.


=head2 _request_id => Str


=cut

