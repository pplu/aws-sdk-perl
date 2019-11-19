# Generated from json/callresult_class.tt

package Paws::ServiceQuotas::ListRequestedServiceQuotaChangeHistoryByQuotaResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceQuotas::Types qw/ServiceQuotas_RequestedServiceQuotaChange/;
  has NextToken => (is => 'ro', isa => Str);
  has RequestedQuotas => (is => 'ro', isa => ArrayRef[ServiceQuotas_RequestedServiceQuotaChange]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RequestedQuotas' => {
                                      'class' => 'Paws::ServiceQuotas::RequestedServiceQuotaChange',
                                      'type' => 'ArrayRef[ServiceQuotas_RequestedServiceQuotaChange]'
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

Paws::ServiceQuotas::ListRequestedServiceQuotaChangeHistoryByQuotaResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If present in the response, this value indicates there's more output
available that what's included in the current response. This can occur
even when the response includes no values at all, such as when you ask
for a filtered view of a very long list. Use this value in the
C<NextToken> request parameter in a subsequent call to the operation to
continue processing and get the next part of the output. You should
repeat this until the C<NextToken> response element comes back empty
(as C<null>).


=head2 RequestedQuotas => ArrayRef[ServiceQuotas_RequestedServiceQuotaChange]

Returns a list of service quota requests.


=head2 _request_id => Str


=cut

1;