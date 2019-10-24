# Generated from json/callresult_class.tt

package Paws::Inspector::PreviewAgentsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Inspector::Types qw/Inspector_AgentPreview/;
  has AgentPreviews => (is => 'ro', isa => ArrayRef[Inspector_AgentPreview], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AgentPreviews' => {
                                    'class' => 'Paws::Inspector::AgentPreview',
                                    'type' => 'ArrayRef[Inspector_AgentPreview]'
                                  },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'AgentPreviews' => 'agentPreviews',
                       'NextToken' => 'nextToken'
                     },
  'IsRequired' => {
                    'AgentPreviews' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::PreviewAgentsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentPreviews => ArrayRef[Inspector_AgentPreview]

The resulting list of agents.


=head2 NextToken => Str

When a response is generated, if there is more data to be listed, this
parameter is present in the response and contains the value to use for
the B<nextToken> parameter in a subsequent pagination request. If there
is no more data to be listed, this parameter is set to null.


=head2 _request_id => Str


=cut

1;