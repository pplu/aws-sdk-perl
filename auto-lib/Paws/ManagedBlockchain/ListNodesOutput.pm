
package Paws::ManagedBlockchain::ListNodesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ManagedBlockchain::Types qw/ManagedBlockchain_NodeSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has Nodes => (is => 'ro', isa => ArrayRef[ManagedBlockchain_NodeSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Nodes' => {
                            'class' => 'Paws::ManagedBlockchain::NodeSummary',
                            'type' => 'ArrayRef[ManagedBlockchain_NodeSummary]'
                          },
               'NextToken' => {
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

Paws::ManagedBlockchain::ListNodesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 Nodes => ArrayRef[ManagedBlockchain_NodeSummary]

An array of C<NodeSummary> objects that contain configuration
properties for each node.


=head2 _request_id => Str


=cut

