
package Paws::GlueDataBrew::DescribeScheduleResponse;
  use Moose;
  has CreateDate => (is => 'ro', isa => 'Str');
  has CreatedBy => (is => 'ro', isa => 'Str');
  has CronExpression => (is => 'ro', isa => 'Str');
  has JobNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has LastModifiedBy => (is => 'ro', isa => 'Str');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::GlueDataBrew::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::DescribeScheduleResponse

=head1 ATTRIBUTES


=head2 CreateDate => Str

The date and time that the schedule was created.


=head2 CreatedBy => Str

The identifier (user name) of the user who created the schedule.


=head2 CronExpression => Str

The date or dates and time or times when the jobs are to be run for the
schedule. For more information, see Cron expressions
(https://docs.aws.amazon.com/databrew/latest/dg/jobs.cron.html) in the
I<Glue DataBrew Developer Guide>.


=head2 JobNames => ArrayRef[Str|Undef]

The name or names of one or more jobs to be run by using the schedule.


=head2 LastModifiedBy => Str

The identifier (user name) of the user who last modified the schedule.


=head2 LastModifiedDate => Str

The date and time that the schedule was last modified.


=head2 B<REQUIRED> Name => Str

The name of the schedule.


=head2 ResourceArn => Str

The Amazon Resource Name (ARN) of the schedule.


=head2 Tags => L<Paws::GlueDataBrew::TagMap>

Metadata tags associated with this schedule.


=head2 _request_id => Str


=cut

