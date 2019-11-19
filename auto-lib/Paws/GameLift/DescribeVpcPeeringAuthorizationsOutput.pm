# Generated from json/callresult_class.tt

package Paws::GameLift::DescribeVpcPeeringAuthorizationsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GameLift::Types qw/GameLift_VpcPeeringAuthorization/;
  has VpcPeeringAuthorizations => (is => 'ro', isa => ArrayRef[GameLift_VpcPeeringAuthorization]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VpcPeeringAuthorizations' => {
                                               'class' => 'Paws::GameLift::VpcPeeringAuthorization',
                                               'type' => 'ArrayRef[GameLift_VpcPeeringAuthorization]'
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

Paws::GameLift::DescribeVpcPeeringAuthorizationsOutput

=head1 ATTRIBUTES


=head2 VpcPeeringAuthorizations => ArrayRef[GameLift_VpcPeeringAuthorization]

Collection of objects that describe all valid VPC peering operations
for the current AWS account.


=head2 _request_id => Str


=cut

1;