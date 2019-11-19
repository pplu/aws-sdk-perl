# Generated from json/callresult_class.tt

package Paws::MTurk::ListBonusPaymentsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::MTurk::Types qw/MTurk_BonusPayment/;
  has BonusPayments => (is => 'ro', isa => ArrayRef[MTurk_BonusPayment]);
  has NextToken => (is => 'ro', isa => Str);
  has NumResults => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NumResults' => {
                                 'type' => 'Int'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'BonusPayments' => {
                                    'class' => 'Paws::MTurk::BonusPayment',
                                    'type' => 'ArrayRef[MTurk_BonusPayment]'
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

Paws::MTurk::ListBonusPaymentsResponse

=head1 ATTRIBUTES


=head2 BonusPayments => ArrayRef[MTurk_BonusPayment]

A successful request to the ListBonusPayments operation returns a list
of BonusPayment objects.


=head2 NextToken => Str




=head2 NumResults => Int

The number of bonus payments on this page in the filtered results list,
equivalent to the number of bonus payments being returned by this call.


=head2 _request_id => Str


=cut

1;