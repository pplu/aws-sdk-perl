
package Paws::RedShift::ModifySnapshotSchedule;
  use Moose;
  has ScheduleDefinitions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has ScheduleIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifySnapshotSchedule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::SnapshotSchedule');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifySnapshotScheduleResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ModifySnapshotSchedule - Arguments for method ModifySnapshotSchedule on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifySnapshotSchedule on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method ModifySnapshotSchedule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifySnapshotSchedule.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $SnapshotSchedule = $redshift->ModifySnapshotSchedule(
      ScheduleDefinitions => [ 'MyString', ... ],
      ScheduleIdentifier  => 'MyString',

    );

    # Results:
    my $AssociatedClusterCount = $SnapshotSchedule->AssociatedClusterCount;
    my $AssociatedClusters     = $SnapshotSchedule->AssociatedClusters;
    my $NextInvocations        = $SnapshotSchedule->NextInvocations;
    my $ScheduleDefinitions    = $SnapshotSchedule->ScheduleDefinitions;
    my $ScheduleDescription    = $SnapshotSchedule->ScheduleDescription;
    my $ScheduleIdentifier     = $SnapshotSchedule->ScheduleIdentifier;
    my $Tags                   = $SnapshotSchedule->Tags;

    # Returns a L<Paws::RedShift::SnapshotSchedule> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/ModifySnapshotSchedule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ScheduleDefinitions => ArrayRef[Str|Undef]

An updated list of schedule definitions. A schedule definition is made
up of schedule expressions, for example, "cron(30 12 *)" or "rate(12
hours)".



=head2 B<REQUIRED> ScheduleIdentifier => Str

A unique alphanumeric identifier of the schedule to modify.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifySnapshotSchedule in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

