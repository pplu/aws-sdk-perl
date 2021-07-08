
package Paws::GlueDataBrew::CreateSchedule;
  use Moose;
  has CronExpression => (is => 'ro', isa => 'Str', required => 1);
  has JobNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::GlueDataBrew::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSchedule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/schedules');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlueDataBrew::CreateScheduleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::CreateSchedule - Arguments for method CreateSchedule on L<Paws::GlueDataBrew>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSchedule on the
L<AWS Glue DataBrew|Paws::GlueDataBrew> service. Use the attributes of this class
as arguments to method CreateSchedule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSchedule.

=head1 SYNOPSIS

    my $databrew = Paws->service('GlueDataBrew');
    my $CreateScheduleResponse = $databrew->CreateSchedule(
      CronExpression => 'MyCronExpression',
      Name           => 'MyScheduleName',
      JobNames       => [
        'MyJobName', ...    # min: 1, max: 240
      ],    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Name = $CreateScheduleResponse->Name;

    # Returns a L<Paws::GlueDataBrew::CreateScheduleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/databrew/CreateSchedule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CronExpression => Str

The date or dates and time or times when the jobs are to be run. For
more information, see Cron expressions
(https://docs.aws.amazon.com/databrew/latest/dg/jobs.cron.html) in the
I<Glue DataBrew Developer Guide>.



=head2 JobNames => ArrayRef[Str|Undef]

The name or names of one or more jobs to be run.



=head2 B<REQUIRED> Name => Str

A unique name for the schedule. Valid characters are alphanumeric (A-Z,
a-z, 0-9), hyphen (-), period (.), and space.



=head2 Tags => L<Paws::GlueDataBrew::TagMap>

Metadata tags to apply to this schedule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSchedule in L<Paws::GlueDataBrew>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

