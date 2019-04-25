
package Paws::MigrationHub::NotifyMigrationTaskState;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has MigrationTaskName => (is => 'ro', isa => 'Str', required => 1);
  has NextUpdateSeconds => (is => 'ro', isa => 'Int', required => 1);
  has ProgressUpdateStream => (is => 'ro', isa => 'Str', required => 1);
  has Task => (is => 'ro', isa => 'Paws::MigrationHub::Task', required => 1);
  has UpdateDateTime => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'NotifyMigrationTaskState');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHub::NotifyMigrationTaskStateResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHub::NotifyMigrationTaskState - Arguments for method NotifyMigrationTaskState on L<Paws::MigrationHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method NotifyMigrationTaskState on the
L<AWS Migration Hub|Paws::MigrationHub> service. Use the attributes of this class
as arguments to method NotifyMigrationTaskState.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to NotifyMigrationTaskState.

=head1 SYNOPSIS

    my $mgh = Paws->service('MigrationHub');
    my $NotifyMigrationTaskStateResult = $mgh->NotifyMigrationTaskState(
      MigrationTaskName    => 'MyMigrationTaskName',
      NextUpdateSeconds    => 1,
      ProgressUpdateStream => 'MyProgressUpdateStream',
      Task                 => {
        Status =>
          'NOT_STARTED',   # values: NOT_STARTED, IN_PROGRESS, FAILED, COMPLETED
        ProgressPercent => 1,                   # max: 100; OPTIONAL
        StatusDetail    => 'MyStatusDetail',    # max: 500; OPTIONAL
      },
      UpdateDateTime => '1970-01-01T01:00:00',
      DryRun         => 1,                       # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgh/NotifyMigrationTaskState>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Optional boolean flag to indicate whether any effect should take place.
Used to test if the caller has permission to make the call.



=head2 B<REQUIRED> MigrationTaskName => Str

Unique identifier that references the migration task.



=head2 B<REQUIRED> NextUpdateSeconds => Int

Number of seconds after the UpdateDateTime within which the Migration
Hub can expect an update. If Migration Hub does not receive an update
within the specified interval, then the migration task will be
considered stale.



=head2 B<REQUIRED> ProgressUpdateStream => Str

The name of the ProgressUpdateStream.



=head2 B<REQUIRED> Task => L<Paws::MigrationHub::Task>

Information about the task's progress and status.



=head2 B<REQUIRED> UpdateDateTime => Str

The timestamp when the task was gathered.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method NotifyMigrationTaskState in L<Paws::MigrationHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

