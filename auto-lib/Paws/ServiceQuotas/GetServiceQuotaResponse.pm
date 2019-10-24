# Generated from json/callresult_class.tt

package Paws::ServiceQuotas::GetServiceQuotaResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServiceQuotas::Types qw/ServiceQuotas_ServiceQuota/;
  has Quota => (is => 'ro', isa => ServiceQuotas_ServiceQuota);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Quota' => {
                            'class' => 'Paws::ServiceQuotas::ServiceQuota',
                            'type' => 'ServiceQuotas_ServiceQuota'
                          }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::GetServiceQuotaResponse

=head1 ATTRIBUTES


=head2 Quota => ServiceQuotas_ServiceQuota

Returns the ServiceQuota object which contains all values for a quota.


=head2 _request_id => Str


=cut

1;