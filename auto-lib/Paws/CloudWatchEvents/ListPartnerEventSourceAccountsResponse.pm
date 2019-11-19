# Generated from json/callresult_class.tt

package Paws::CloudWatchEvents::ListPartnerEventSourceAccountsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatchEvents::Types qw/CloudWatchEvents_PartnerEventSourceAccount/;
  has NextToken => (is => 'ro', isa => Str);
  has PartnerEventSourceAccounts => (is => 'ro', isa => ArrayRef[CloudWatchEvents_PartnerEventSourceAccount]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PartnerEventSourceAccounts' => {
                                                 'type' => 'ArrayRef[CloudWatchEvents_PartnerEventSourceAccount]',
                                                 'class' => 'Paws::CloudWatchEvents::PartnerEventSourceAccount'
                                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListPartnerEventSourceAccountsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token you can use in a subsequent operation to retrieve the next set
of results.


=head2 PartnerEventSourceAccounts => ArrayRef[CloudWatchEvents_PartnerEventSourceAccount]

The list of partner event sources returned by the operation.


=head2 _request_id => Str


=cut

1;