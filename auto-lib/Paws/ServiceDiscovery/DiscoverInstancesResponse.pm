# Generated from json/callresult_class.tt

package Paws::ServiceDiscovery::DiscoverInstancesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceDiscovery::Types qw/ServiceDiscovery_HttpInstanceSummary/;
  has Instances => (is => 'ro', isa => ArrayRef[ServiceDiscovery_HttpInstanceSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Instances' => {
                                'class' => 'Paws::ServiceDiscovery::HttpInstanceSummary',
                                'type' => 'ArrayRef[ServiceDiscovery_HttpInstanceSummary]'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::DiscoverInstancesResponse

=head1 ATTRIBUTES


=head2 Instances => ArrayRef[ServiceDiscovery_HttpInstanceSummary]

A complex type that contains one C<HttpInstanceSummary> for each
registered instance.


=head2 _request_id => Str


=cut

1;