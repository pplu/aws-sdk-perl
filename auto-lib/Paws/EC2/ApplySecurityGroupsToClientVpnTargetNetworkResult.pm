
package Paws::EC2::ApplySecurityGroupsToClientVpnTargetNetworkResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::EC2::Types qw//;
  has SecurityGroupIds => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SecurityGroupIds' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'SecurityGroupIds' => 'securityGroupIds'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ApplySecurityGroupsToClientVpnTargetNetworkResult

=head1 ATTRIBUTES


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The IDs of the applied security groups.


=head2 _request_id => Str


=cut

