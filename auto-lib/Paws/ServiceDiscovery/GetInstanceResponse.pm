# Generated from json/callresult_class.tt

package Paws::ServiceDiscovery::GetInstanceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServiceDiscovery::Types qw/ServiceDiscovery_Instance/;
  has Instance => (is => 'ro', isa => ServiceDiscovery_Instance);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Instance' => {
                               'class' => 'Paws::ServiceDiscovery::Instance',
                               'type' => 'ServiceDiscovery_Instance'
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

Paws::ServiceDiscovery::GetInstanceResponse

=head1 ATTRIBUTES


=head2 Instance => ServiceDiscovery_Instance

A complex type that contains information about a specified instance.


=head2 _request_id => Str


=cut

1;