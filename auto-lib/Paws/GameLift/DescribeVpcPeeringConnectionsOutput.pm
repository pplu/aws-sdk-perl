# Generated from json/callresult_class.tt

package Paws::GameLift::DescribeVpcPeeringConnectionsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GameLift::Types qw/GameLift_VpcPeeringConnection/;
  has VpcPeeringConnections => (is => 'ro', isa => ArrayRef[GameLift_VpcPeeringConnection]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VpcPeeringConnections' => {
                                            'class' => 'Paws::GameLift::VpcPeeringConnection',
                                            'type' => 'ArrayRef[GameLift_VpcPeeringConnection]'
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

Paws::GameLift::DescribeVpcPeeringConnectionsOutput

=head1 ATTRIBUTES


=head2 VpcPeeringConnections => ArrayRef[GameLift_VpcPeeringConnection]

Collection of VPC peering connection records that match the request.


=head2 _request_id => Str


=cut

1;