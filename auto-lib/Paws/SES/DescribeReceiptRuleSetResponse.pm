
package Paws::SES::DescribeReceiptRuleSetResponse;
  use Moose;
  has Metadata => (is => 'ro', isa => 'Paws::SES::ReceiptRuleSetMetadata');
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::SES::ReceiptRule]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::DescribeReceiptRuleSetResponse

=head1 ATTRIBUTES

=head2 Metadata => Paws::SES::ReceiptRuleSetMetadata

  The metadata for the receipt rule set, which consists of the rule set
name and the timestamp of when the rule set was created.
=head2 Rules => ArrayRef[Paws::SES::ReceiptRule]

  A list of the receipt rules that belong to the specified receipt rule
set.


=cut

