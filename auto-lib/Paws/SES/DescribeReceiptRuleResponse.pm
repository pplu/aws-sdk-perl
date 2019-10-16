
package Paws::SES::DescribeReceiptRuleResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SES::Types qw/SES_ReceiptRule/;
  has Rule => (is => 'ro', isa => SES_ReceiptRule);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Rule' => {
                           'class' => 'Paws::SES::ReceiptRule',
                           'type' => 'SES_ReceiptRule'
                         }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::DescribeReceiptRuleResponse

=head1 ATTRIBUTES


=head2 Rule => SES_ReceiptRule

A data structure that contains the specified receipt rule's name,
actions, recipients, domains, enabled status, scan status, and
Transport Layer Security (TLS) policy.


=head2 _request_id => Str


=cut

