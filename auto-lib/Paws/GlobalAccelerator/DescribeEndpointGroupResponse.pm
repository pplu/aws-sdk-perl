# Generated from json/callresult_class.tt

package Paws::GlobalAccelerator::DescribeEndpointGroupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GlobalAccelerator::Types qw/GlobalAccelerator_EndpointGroup/;
  has EndpointGroup => (is => 'ro', isa => GlobalAccelerator_EndpointGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EndpointGroup' => {
                                    'class' => 'Paws::GlobalAccelerator::EndpointGroup',
                                    'type' => 'GlobalAccelerator_EndpointGroup'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::DescribeEndpointGroupResponse

=head1 ATTRIBUTES


=head2 EndpointGroup => GlobalAccelerator_EndpointGroup

The description of an endpoint group.


=head2 _request_id => Str


=cut

1;