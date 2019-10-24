# Generated from json/callresult_class.tt

package Paws::CodeDeploy::ListDeploymentTargetsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::CodeDeploy::Types qw//;
  has NextToken => (is => 'ro', isa => Str);
  has TargetIds => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TargetIds' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'TargetIds' => 'targetIds',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ListDeploymentTargetsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If a large amount of information is returned, a token identifier is
also returned. It can be used in a subsequent C<ListDeploymentTargets>
call to return the next set of deployment targets in the list.


=head2 TargetIds => ArrayRef[Str|Undef]

The unique IDs of deployment targets.


=head2 _request_id => Str


=cut

1;