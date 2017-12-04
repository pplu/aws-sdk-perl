package Paws::MigrationHub::MigrationTaskSummary;
  use Moose;
  has MigrationTaskName => (is => 'ro', isa => 'Str');
  has ProgressPercent => (is => 'ro', isa => 'Int');
  has ProgressUpdateStream => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusDetail => (is => 'ro', isa => 'Str');
  has UpdateDateTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHub::MigrationTaskSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MigrationHub::MigrationTaskSummary object:

  $service_obj->Method(Att1 => { MigrationTaskName => $value, ..., UpdateDateTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MigrationHub::MigrationTaskSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->MigrationTaskName

=head1 DESCRIPTION

MigrationTaskSummary includes C<MigrationTaskName>, C<ProgressPercent>,
C<ProgressUpdateStream>, C<Status>, and C<UpdateDateTime> for each
task.

=head1 ATTRIBUTES


=head2 MigrationTaskName => Str

  Unique identifier that references the migration task.


=head2 ProgressPercent => Int

  


=head2 ProgressUpdateStream => Str

  An AWS resource used for access control. It should uniquely identify
the migration tool as it is used for all updates made by the tool.


=head2 Status => Str

  Status of the task.


=head2 StatusDetail => Str

  Detail information of what is being done within the overall status
state.


=head2 UpdateDateTime => Str

  The timestamp when the task was gathered.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MigrationHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

