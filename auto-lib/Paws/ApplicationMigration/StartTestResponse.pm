
package Paws::ApplicationMigration::StartTestResponse;
  use Moose;
  has Job => (is => 'ro', isa => 'Paws::ApplicationMigration::Job', traits => ['NameInRequest'], request_name => 'job');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::StartTestResponse

=head1 ATTRIBUTES


=head2 Job => L<Paws::ApplicationMigration::Job>

Start Test Job response.


=head2 _request_id => Str


=cut

