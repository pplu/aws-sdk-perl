
package Paws::MobileHub::ListProjectsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Projects => (is => 'ro', isa => 'ArrayRef[Paws::MobileHub::ProjectSummary]', traits => ['NameInRequest'], request_name => 'projects');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MobileHub::ListProjectsResult

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 Projects => ArrayRef[L<Paws::MobileHub::ProjectSummary>]




=head2 _request_id => Str


=cut

