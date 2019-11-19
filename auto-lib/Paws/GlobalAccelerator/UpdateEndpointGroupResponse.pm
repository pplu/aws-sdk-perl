# Generated from json/callresult_class.tt

package Paws::GlobalAccelerator::UpdateEndpointGroupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GlobalAccelerator::Types qw/GlobalAccelerator_EndpointGroup/;
  has EndpointGroup => (is => 'ro', isa => GlobalAccelerator_EndpointGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EndpointGroup' => {
                                    'class' => 'Paws::GlobalAccelerator::EndpointGroup',
                                    'type' => 'GlobalAccelerator_EndpointGroup'
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

Paws::GlobalAccelerator::UpdateEndpointGroupResponse

=head1 ATTRIBUTES


=head2 EndpointGroup => GlobalAccelerator_EndpointGroup

The information about the endpoint group that was updated.


=head2 _request_id => Str


=cut

1;