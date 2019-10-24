# Generated from json/callresult_class.tt

package Paws::ServiceQuotas::GetRequestedServiceQuotaChangeResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServiceQuotas::Types qw/ServiceQuotas_RequestedServiceQuotaChange/;
  has RequestedQuota => (is => 'ro', isa => ServiceQuotas_RequestedServiceQuotaChange);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RequestedQuota' => {
                                     'class' => 'Paws::ServiceQuotas::RequestedServiceQuotaChange',
                                     'type' => 'ServiceQuotas_RequestedServiceQuotaChange'
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

Paws::ServiceQuotas::GetRequestedServiceQuotaChangeResponse

=head1 ATTRIBUTES


=head2 RequestedQuota => ServiceQuotas_RequestedServiceQuotaChange

Returns the C<RequestedServiceQuotaChange> object for the specific
increase request.


=head2 _request_id => Str


=cut

1;