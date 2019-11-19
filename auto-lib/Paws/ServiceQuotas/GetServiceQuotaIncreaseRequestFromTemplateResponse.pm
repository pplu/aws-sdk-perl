# Generated from json/callresult_class.tt

package Paws::ServiceQuotas::GetServiceQuotaIncreaseRequestFromTemplateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServiceQuotas::Types qw/ServiceQuotas_ServiceQuotaIncreaseRequestInTemplate/;
  has ServiceQuotaIncreaseRequestInTemplate => (is => 'ro', isa => ServiceQuotas_ServiceQuotaIncreaseRequestInTemplate);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ServiceQuotaIncreaseRequestInTemplate' => {
                                                            'class' => 'Paws::ServiceQuotas::ServiceQuotaIncreaseRequestInTemplate',
                                                            'type' => 'ServiceQuotas_ServiceQuotaIncreaseRequestInTemplate'
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

Paws::ServiceQuotas::GetServiceQuotaIncreaseRequestFromTemplateResponse

=head1 ATTRIBUTES


=head2 ServiceQuotaIncreaseRequestInTemplate => ServiceQuotas_ServiceQuotaIncreaseRequestInTemplate

This object contains the details about the quota increase request.


=head2 _request_id => Str


=cut

1;