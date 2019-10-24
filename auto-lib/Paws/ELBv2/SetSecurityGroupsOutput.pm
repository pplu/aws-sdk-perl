# Generated from callresult_class.tt

package Paws::ELBv2::SetSecurityGroupsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ELBv2::Types qw//;
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
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::SetSecurityGroupsOutput

=head1 ATTRIBUTES


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The IDs of the security groups associated with the load balancer.


=head2 _request_id => Str


=cut

