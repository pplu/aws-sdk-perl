
package Paws::Connect::ListPhoneNumbersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Connect::Types qw/Connect_PhoneNumberSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has PhoneNumberSummaryList => (is => 'ro', isa => ArrayRef[Connect_PhoneNumberSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'PhoneNumberSummaryList' => {
                                             'type' => 'ArrayRef[Connect_PhoneNumberSummary]',
                                             'class' => 'Paws::Connect::PhoneNumberSummary'
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

Paws::Connect::ListPhoneNumbersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 PhoneNumberSummaryList => ArrayRef[Connect_PhoneNumberSummary]

Information about the phone numbers.


=head2 _request_id => Str


=cut

