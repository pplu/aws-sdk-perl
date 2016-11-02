
package Paws::SES::DescribeReceiptRuleResponse;
  use Moose;
  has Rule => (is => 'ro', isa => 'Paws::SES::ReceiptRule');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::DescribeReceiptRuleResponse

=head1 ATTRIBUTES


=head2 Rule => L<Paws::SES::ReceiptRule>

A data structure that contains the specified receipt rule's name,
actions, recipients, domains, enabled status, scan status, and
Transport Layer Security (TLS) policy.


=head2 _request_id => Str


=cut

