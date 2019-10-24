# Generated from json/callresult_class.tt

package Paws::ServiceDiscovery::GetInstancesHealthStatusResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServiceDiscovery::Types qw/ServiceDiscovery_InstanceHealthStatusMap/;
  has NextToken => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => ServiceDiscovery_InstanceHealthStatusMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Status' => {
                             'class' => 'Paws::ServiceDiscovery::InstanceHealthStatusMap',
                             'type' => 'ServiceDiscovery_InstanceHealthStatusMap'
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

Paws::ServiceDiscovery::GetInstancesHealthStatusResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If more than C<MaxResults> instances match the specified criteria, you
can submit another C<GetInstancesHealthStatus> request to get the next
group of results. Specify the value of C<NextToken> from the previous
response in the next request.


=head2 Status => ServiceDiscovery_InstanceHealthStatusMap

A complex type that contains the IDs and the health status of the
instances that you specified in the C<GetInstancesHealthStatus>
request.


=head2 _request_id => Str


=cut

1;