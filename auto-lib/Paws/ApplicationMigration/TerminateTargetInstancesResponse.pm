
package Paws::ApplicationMigration::TerminateTargetInstancesResponse;
  use Moose;
  has Job => (is => 'ro', isa => 'Paws::ApplicationMigration::Job', traits => ['NameInRequest'], request_name => 'job');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::TerminateTargetInstancesResponse

=head1 ATTRIBUTES


=head2 Job => L<Paws::ApplicationMigration::Job>

Terminate Target instance Job response.


=head2 _request_id => Str


=cut

