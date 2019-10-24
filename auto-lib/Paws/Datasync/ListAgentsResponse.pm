# Generated from json/callresult_class.tt

package Paws::Datasync::ListAgentsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Datasync::Types qw/Datasync_AgentListEntry/;
  has Agents => (is => 'ro', isa => ArrayRef[Datasync_AgentListEntry]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Agents' => {
                             'class' => 'Paws::Datasync::AgentListEntry',
                             'type' => 'ArrayRef[Datasync_AgentListEntry]'
                           },
               'NextToken' => {
                                'type' => 'Str'
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

Paws::Datasync::ListAgentsResponse

=head1 ATTRIBUTES


=head2 Agents => ArrayRef[Datasync_AgentListEntry]

A list of agents in your account.


=head2 NextToken => Str

An opaque string that indicates the position at which to begin
returning the next list of agents.


=head2 _request_id => Str


=cut

1;