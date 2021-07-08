
package Paws::IoT::ListAuditSuppressionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Suppressions => (is => 'ro', isa => 'ArrayRef[Paws::IoT::AuditSuppression]', traits => ['NameInRequest'], request_name => 'suppressions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListAuditSuppressionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that can be used to retrieve the next set of results, or
C<null> if there are no additional results.


=head2 Suppressions => ArrayRef[L<Paws::IoT::AuditSuppression>]

List of audit suppressions.


=head2 _request_id => Str


=cut

