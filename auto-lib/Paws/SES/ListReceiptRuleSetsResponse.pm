# Generated from callresult_class.tt

package Paws::SES::ListReceiptRuleSetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SES::Types qw/SES_ReceiptRuleSetMetadata/;
  has NextToken => (is => 'ro', isa => Str);
  has RuleSets => (is => 'ro', isa => ArrayRef[SES_ReceiptRuleSetMetadata]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'RuleSets' => {
                               'type' => 'ArrayRef[SES_ReceiptRuleSetMetadata]',
                               'class' => 'Paws::SES::ReceiptRuleSetMetadata'
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

Paws::SES::ListReceiptRuleSetsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token indicating that there are additional receipt rule sets
available to be listed. Pass this token to successive calls of
C<ListReceiptRuleSets> to retrieve up to 100 receipt rule sets at a
time.


=head2 RuleSets => ArrayRef[SES_ReceiptRuleSetMetadata]

The metadata for the currently active receipt rule set. The metadata
consists of the rule set name and the timestamp of when the rule set
was created.


=head2 _request_id => Str


=cut

