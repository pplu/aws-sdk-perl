# Generated from json/callresult_class.tt

package Paws::Datasync::CreateAgentResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Datasync::Types qw//;
  has AgentArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AgentArn' => {
                               'type' => 'Str'
                             }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Datasync::CreateAgentResponse

=head1 ATTRIBUTES


=head2 AgentArn => Str

The Amazon Resource Name (ARN) of the agent. Use the C<ListAgents>
operation to return a list of agents for your account and AWS Region.


=head2 _request_id => Str


=cut

1;