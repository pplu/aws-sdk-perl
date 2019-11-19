# Generated from json/callresult_class.tt

package Paws::GameLift::CreateVpcPeeringAuthorizationOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GameLift::Types qw/GameLift_VpcPeeringAuthorization/;
  has VpcPeeringAuthorization => (is => 'ro', isa => GameLift_VpcPeeringAuthorization);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'VpcPeeringAuthorization' => {
                                              'class' => 'Paws::GameLift::VpcPeeringAuthorization',
                                              'type' => 'GameLift_VpcPeeringAuthorization'
                                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateVpcPeeringAuthorizationOutput

=head1 ATTRIBUTES


=head2 VpcPeeringAuthorization => GameLift_VpcPeeringAuthorization

Details on the requested VPC peering authorization, including
expiration.


=head2 _request_id => Str


=cut

1;