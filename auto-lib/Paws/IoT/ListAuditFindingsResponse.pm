
package Paws::IoT::ListAuditFindingsResponse;
  use Moose;
  has Findings => (is => 'ro', isa => 'ArrayRef[Paws::IoT::AuditFinding]', traits => ['NameInRequest'], request_name => 'findings');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListAuditFindingsResponse

=head1 ATTRIBUTES


=head2 Findings => ArrayRef[L<Paws::IoT::AuditFinding>]

The findings (results) of the audit.


=head2 NextToken => Str

A token that can be used to retrieve the next set of results, or
C<null> if there are no additional results.


=head2 _request_id => Str


=cut

