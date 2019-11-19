# Generated from json/callresult_class.tt

package Paws::GlobalAccelerator::CreateEndpointGroupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GlobalAccelerator::Types qw/GlobalAccelerator_EndpointGroup/;
  has EndpointGroup => (is => 'ro', isa => GlobalAccelerator_EndpointGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EndpointGroup' => {
                                    'type' => 'GlobalAccelerator_EndpointGroup',
                                    'class' => 'Paws::GlobalAccelerator::EndpointGroup'
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

Paws::GlobalAccelerator::CreateEndpointGroupResponse

=head1 ATTRIBUTES


=head2 EndpointGroup => GlobalAccelerator_EndpointGroup

The information about the endpoint group that was created.


=head2 _request_id => Str


=cut

1;