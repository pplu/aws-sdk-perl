
package Paws::SSMIncidents::ListReplicationSetsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ReplicationSetArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'replicationSetArns', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::ListReplicationSetsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token to continue to the next page of results.


=head2 B<REQUIRED> ReplicationSetArns => ArrayRef[Str|Undef]

The Amazon Resource Name (ARN) of the list replication set.


=head2 _request_id => Str


=cut

