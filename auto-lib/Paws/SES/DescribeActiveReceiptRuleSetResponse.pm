# Generated from callresult_class.tt

package Paws::SES::DescribeActiveReceiptRuleSetResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SES::Types qw/SES_ReceiptRuleSetMetadata SES_ReceiptRule/;
  has Metadata => (is => 'ro', isa => SES_ReceiptRuleSetMetadata);
  has Rules => (is => 'ro', isa => ArrayRef[SES_ReceiptRule]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Metadata' => {
                               'class' => 'Paws::SES::ReceiptRuleSetMetadata',
                               'type' => 'SES_ReceiptRuleSetMetadata'
                             },
               'Rules' => {
                            'type' => 'ArrayRef[SES_ReceiptRule]',
                            'class' => 'Paws::SES::ReceiptRule'
                          },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::DescribeActiveReceiptRuleSetResponse

=head1 ATTRIBUTES


=head2 Metadata => SES_ReceiptRuleSetMetadata

The metadata for the currently active receipt rule set. The metadata
consists of the rule set name and a timestamp of when the rule set was
created.


=head2 Rules => ArrayRef[SES_ReceiptRule]

The receipt rules that belong to the active rule set.


=head2 _request_id => Str


=cut

