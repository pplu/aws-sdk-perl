
package Paws::MigrationHub::DescribeMigrationTaskResult;
  use Moose;
  has MigrationTask => (is => 'ro', isa => 'Paws::MigrationHub::MigrationTask');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHub::DescribeMigrationTaskResult

=head1 ATTRIBUTES


=head2 MigrationTask => L<Paws::MigrationHub::MigrationTask>

Object encapsulating information about the migration task.


=head2 _request_id => Str


=cut

1;