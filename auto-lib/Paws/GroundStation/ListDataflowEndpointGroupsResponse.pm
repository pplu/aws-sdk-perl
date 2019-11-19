
package Paws::GroundStation::ListDataflowEndpointGroupsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GroundStation::Types qw/GroundStation_DataflowEndpointListItem/;
  has DataflowEndpointGroupList => (is => 'ro', isa => ArrayRef[GroundStation_DataflowEndpointListItem]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DataflowEndpointGroupList' => 'dataflowEndpointGroupList',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DataflowEndpointGroupList' => {
                                                'class' => 'Paws::GroundStation::DataflowEndpointListItem',
                                                'type' => 'ArrayRef[GroundStation_DataflowEndpointListItem]'
                                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::ListDataflowEndpointGroupsResponse

=head1 ATTRIBUTES


=head2 DataflowEndpointGroupList => ArrayRef[GroundStation_DataflowEndpointListItem]

A list of dataflow endpoint groups.


=head2 NextToken => Str

Next token returned in the response of a previous
C<ListDataflowEndpointGroups> call. Used to get the next page of
results.


=head2 _request_id => Str


=cut

