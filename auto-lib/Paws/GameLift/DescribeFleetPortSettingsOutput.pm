# Generated from json/callresult_class.tt

package Paws::GameLift::DescribeFleetPortSettingsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GameLift::Types qw/GameLift_IpPermission/;
  has InboundPermissions => (is => 'ro', isa => ArrayRef[GameLift_IpPermission]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'InboundPermissions' => {
                                         'type' => 'ArrayRef[GameLift_IpPermission]',
                                         'class' => 'Paws::GameLift::IpPermission'
                                       }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeFleetPortSettingsOutput

=head1 ATTRIBUTES


=head2 InboundPermissions => ArrayRef[GameLift_IpPermission]

Object that contains port settings for the requested fleet ID.


=head2 _request_id => Str


=cut

1;