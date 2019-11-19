# Generated from json/callresult_class.tt

package Paws::ServiceQuotas::PutServiceQuotaIncreaseRequestIntoTemplateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServiceQuotas::Types qw/ServiceQuotas_ServiceQuotaIncreaseRequestInTemplate/;
  has ServiceQuotaIncreaseRequestInTemplate => (is => 'ro', isa => ServiceQuotas_ServiceQuotaIncreaseRequestInTemplate);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ServiceQuotaIncreaseRequestInTemplate' => {
                                                            'class' => 'Paws::ServiceQuotas::ServiceQuotaIncreaseRequestInTemplate',
                                                            'type' => 'ServiceQuotas_ServiceQuotaIncreaseRequestInTemplate'
                                                          }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::PutServiceQuotaIncreaseRequestIntoTemplateResponse

=head1 ATTRIBUTES


=head2 ServiceQuotaIncreaseRequestInTemplate => ServiceQuotas_ServiceQuotaIncreaseRequestInTemplate

A structure that contains information about one service quota increase
request.


=head2 _request_id => Str


=cut

1;