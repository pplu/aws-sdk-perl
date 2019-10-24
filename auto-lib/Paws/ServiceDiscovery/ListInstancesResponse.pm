# Generated from json/callresult_class.tt

package Paws::ServiceDiscovery::ListInstancesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceDiscovery::Types qw/ServiceDiscovery_InstanceSummary/;
  has Instances => (is => 'ro', isa => ArrayRef[ServiceDiscovery_InstanceSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Instances' => {
                                'class' => 'Paws::ServiceDiscovery::InstanceSummary',
                                'type' => 'ArrayRef[ServiceDiscovery_InstanceSummary]'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::ListInstancesResponse

=head1 ATTRIBUTES


=head2 Instances => ArrayRef[ServiceDiscovery_InstanceSummary]

Summary information about the instances that are associated with the
specified service.


=head2 NextToken => Str

If more than C<MaxResults> instances match the specified criteria, you
can submit another C<ListInstances> request to get the next group of
results. Specify the value of C<NextToken> from the previous response
in the next request.


=head2 _request_id => Str


=cut

1;