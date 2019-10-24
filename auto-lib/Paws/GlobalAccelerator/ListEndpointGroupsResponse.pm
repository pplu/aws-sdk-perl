# Generated from json/callresult_class.tt

package Paws::GlobalAccelerator::ListEndpointGroupsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GlobalAccelerator::Types qw/GlobalAccelerator_EndpointGroup/;
  has EndpointGroups => (is => 'ro', isa => ArrayRef[GlobalAccelerator_EndpointGroup]);
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
               'EndpointGroups' => {
                                     'class' => 'Paws::GlobalAccelerator::EndpointGroup',
                                     'type' => 'ArrayRef[GlobalAccelerator_EndpointGroup]'
                                   }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::ListEndpointGroupsResponse

=head1 ATTRIBUTES


=head2 EndpointGroups => ArrayRef[GlobalAccelerator_EndpointGroup]

The list of the endpoint groups associated with a listener.


=head2 NextToken => Str

The token for the next set of results. You receive this token from a
previous call.


=head2 _request_id => Str


=cut

1;