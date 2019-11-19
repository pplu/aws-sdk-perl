# Generated from json/callresult_class.tt

package Paws::ServiceQuotas::ListServiceQuotaIncreaseRequestsInTemplateResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceQuotas::Types qw/ServiceQuotas_ServiceQuotaIncreaseRequestInTemplate/;
  has NextToken => (is => 'ro', isa => Str);
  has ServiceQuotaIncreaseRequestInTemplateList => (is => 'ro', isa => ArrayRef[ServiceQuotas_ServiceQuotaIncreaseRequestInTemplate]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ServiceQuotaIncreaseRequestInTemplateList' => {
                                                                'class' => 'Paws::ServiceQuotas::ServiceQuotaIncreaseRequestInTemplate',
                                                                'type' => 'ArrayRef[ServiceQuotas_ServiceQuotaIncreaseRequestInTemplate]'
                                                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::ListServiceQuotaIncreaseRequestsInTemplateResponse

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


=head2 ServiceQuotaIncreaseRequestInTemplateList => ArrayRef[ServiceQuotas_ServiceQuotaIncreaseRequestInTemplate]

Returns the list of values of the quota increase request in the
template.


=head2 _request_id => Str


=cut

1;