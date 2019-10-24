# Generated from json/callresult_class.tt

package Paws::OpsWorks::DescribeAgentVersionsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::OpsWorks::Types qw/OpsWorks_AgentVersion/;
  has AgentVersions => (is => 'ro', isa => ArrayRef[OpsWorks_AgentVersion]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AgentVersions' => {
                                    'class' => 'Paws::OpsWorks::AgentVersion',
                                    'type' => 'ArrayRef[OpsWorks_AgentVersion]'
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

Paws::OpsWorks::DescribeAgentVersionsResult

=head1 ATTRIBUTES


=head2 AgentVersions => ArrayRef[OpsWorks_AgentVersion]

The agent versions for the specified stack or configuration manager.
Note that this value is the complete version number, not the
abbreviated number used by the console.


=head2 _request_id => Str


=cut

1;