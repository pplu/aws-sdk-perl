
package Paws::MigrationHub::ListApplicationStatesResult;
  use Moose;
  has ApplicationStateList => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHub::ApplicationState]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHub::ListApplicationStatesResult

=head1 ATTRIBUTES


=head2 ApplicationStateList => ArrayRef[L<Paws::MigrationHub::ApplicationState>]

A list of Applications that exist in Application Discovery Service.


=head2 NextToken => Str

If a C<NextToken> was returned by a previous call, there are more
results available. To retrieve the next page of results, make the call
again using the returned token in C<NextToken>.


=head2 _request_id => Str


=cut

1;