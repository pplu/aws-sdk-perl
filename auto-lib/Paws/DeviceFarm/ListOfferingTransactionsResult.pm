# Generated from json/callresult_class.tt

package Paws::DeviceFarm::ListOfferingTransactionsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_OfferingTransaction/;
  has NextToken => (is => 'ro', isa => Str);
  has OfferingTransactions => (is => 'ro', isa => ArrayRef[DeviceFarm_OfferingTransaction]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OfferingTransactions' => {
                                           'class' => 'Paws::DeviceFarm::OfferingTransaction',
                                           'type' => 'ArrayRef[DeviceFarm_OfferingTransaction]'
                                         },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'OfferingTransactions' => 'offeringTransactions',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListOfferingTransactionsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.


=head2 OfferingTransactions => ArrayRef[DeviceFarm_OfferingTransaction]

The audit log of subscriptions you have purchased and modified through
AWS Device Farm.


=head2 _request_id => Str


=cut

1;