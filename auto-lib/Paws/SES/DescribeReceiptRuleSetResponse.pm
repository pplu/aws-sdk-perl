
package Paws::SES::DescribeReceiptRuleSetResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SES::Types qw/SES_ReceiptRule SES_ReceiptRuleSetMetadata/;
  has Metadata => (is => 'ro', isa => SES_ReceiptRuleSetMetadata);
  has Rules => (is => 'ro', isa => ArrayRef[SES_ReceiptRule]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Rules' => {
                            'class' => 'Paws::SES::ReceiptRule',
                            'type' => 'ArrayRef[SES_ReceiptRule]'
                          },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Metadata' => {
                               'class' => 'Paws::SES::ReceiptRuleSetMetadata',
                               'type' => 'SES_ReceiptRuleSetMetadata'
                             }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::DescribeReceiptRuleSetResponse

=head1 ATTRIBUTES


=head2 Metadata => SES_ReceiptRuleSetMetadata

The metadata for the receipt rule set, which consists of the rule set
name and the timestamp of when the rule set was created.


=head2 Rules => ArrayRef[SES_ReceiptRule]

A list of the receipt rules that belong to the specified receipt rule
set.


=head2 _request_id => Str


=cut

