# Generated from json/callresult_class.tt

package Paws::ServiceDiscovery::GetServiceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServiceDiscovery::Types qw/ServiceDiscovery_Service/;
  has Service => (is => 'ro', isa => ServiceDiscovery_Service);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Service' => {
                              'class' => 'Paws::ServiceDiscovery::Service',
                              'type' => 'ServiceDiscovery_Service'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::GetServiceResponse

=head1 ATTRIBUTES


=head2 Service => ServiceDiscovery_Service

A complex type that contains information about the service.


=head2 _request_id => Str


=cut

1;