package Paws::AppConfig::DeploymentSummary;
  use Moose;
  has CompletedAt => (is => 'ro', isa => 'Str');
  has ConfigurationName => (is => 'ro', isa => 'Str');
  has ConfigurationVersion => (is => 'ro', isa => 'Str');
  has DeploymentDurationInMinutes => (is => 'ro', isa => 'Int');
  has DeploymentNumber => (is => 'ro', isa => 'Int');
  has FinalBakeTimeInMinutes => (is => 'ro', isa => 'Int');
  has GrowthFactor => (is => 'ro', isa => 'Num');
  has GrowthType => (is => 'ro', isa => 'Str');
  has PercentageComplete => (is => 'ro', isa => 'Num');
  has StartedAt => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::DeploymentSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppConfig::DeploymentSummary object:

  $service_obj->Method(Att1 => { CompletedAt => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppConfig::DeploymentSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CompletedAt

=head1 DESCRIPTION

Information about the deployment.

=head1 ATTRIBUTES


=head2 CompletedAt => Str

  Time the deployment completed.


=head2 ConfigurationName => Str

  The name of the configuration.


=head2 ConfigurationVersion => Str

  The version of the configuration.


=head2 DeploymentDurationInMinutes => Int

  Total amount of time the deployment lasted.


=head2 DeploymentNumber => Int

  The sequence number of the deployment.


=head2 FinalBakeTimeInMinutes => Int

  The amount of time AppConfig monitors for alarms before considering the
deployment to be complete and no longer eligible for automatic roll
back.


=head2 GrowthFactor => Num

  The percentage of targets to receive a deployed configuration during
each interval.


=head2 GrowthType => Str

  The algorithm used to define how percentage grows over time.


=head2 PercentageComplete => Num

  The percentage of targets for which the deployment is available.


=head2 StartedAt => Str

  Time the deployment started.


=head2 State => Str

  The state of the deployment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

