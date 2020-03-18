package Paws::Pinpoint::JourneyExecutionActivityMetricsResponse;
  use Moose;
  has ActivityType => (is => 'ro', isa => 'Str', required => 1);
  has ApplicationId => (is => 'ro', isa => 'Str', required => 1);
  has JourneyActivityId => (is => 'ro', isa => 'Str', required => 1);
  has JourneyId => (is => 'ro', isa => 'Str', required => 1);
  has LastEvaluatedTime => (is => 'ro', isa => 'Str', required => 1);
  has Metrics => (is => 'ro', isa => 'Paws::Pinpoint::MapOf__string', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::JourneyExecutionActivityMetricsResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::JourneyExecutionActivityMetricsResponse object:

  $service_obj->Method(Att1 => { ActivityType => $value, ..., Metrics => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::JourneyExecutionActivityMetricsResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->ActivityType

=head1 DESCRIPTION

Provides the results of a query that retrieved the data for a standard
execution metric that applies to a journey activity, and provides
information about that query.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActivityType => Str

  The type of activity that the metric applies to. Possible values are:

=over

=item *

CONDITIONAL_SPLIT - For a yes/no split activity, which is an activity
that sends participants down one of two paths in a journey.

=item *

HOLDOUT - For a holdout activity, which is an activity that stops a
journey for a specified percentage of participants.

=item *

MESSAGE - For an email activity, which is an activity that sends an
email message to participants.

=item *

MULTI_CONDITIONAL_SPLIT - For a multivariate split activity, which is
an activity that sends participants down one of as many as five paths
in a journey.

=item *

RANDOM_SPLIT - For a random split activity, which is an activity that
sends specified percentages of participants down one of as many as five
paths in a journey.

=item *

WAIT - For a wait activity, which is an activity that waits for a
certain amount of time or until a specific date and time before moving
participants to the next activity in a journey.

=back



=head2 B<REQUIRED> ApplicationId => Str

  The unique identifier for the application that the metric applies to.


=head2 B<REQUIRED> JourneyActivityId => Str

  The unique identifier for the activity that the metric applies to.


=head2 B<REQUIRED> JourneyId => Str

  The unique identifier for the journey that the metric applies to.


=head2 B<REQUIRED> LastEvaluatedTime => Str

  The date and time, in ISO 8601 format, when Amazon Pinpoint last
evaluated the execution status of the activity and updated the data for
the metric.


=head2 B<REQUIRED> Metrics => L<Paws::Pinpoint::MapOf__string>

  A JSON object that contains the results of the query. The results vary
depending on the type of activity (ActivityType). For information about
the structure and contents of the results, see the Amazon Pinpoint
Developer Guide
(https://docs.aws.amazon.com/pinpoint/latest/developerguide/welcome.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

