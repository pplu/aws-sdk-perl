package Paws::KinesisAnalyticsV2::MonitoringConfigurationDescription;
  use Moose;
  has ConfigurationType => (is => 'ro', isa => 'Str');
  has LogLevel => (is => 'ro', isa => 'Str');
  has MetricsLevel => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::MonitoringConfigurationDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::MonitoringConfigurationDescription object:

  $service_obj->Method(Att1 => { ConfigurationType => $value, ..., MetricsLevel => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::MonitoringConfigurationDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->ConfigurationType

=head1 DESCRIPTION

Describes configuration parameters for CloudWatch logging for a
Java-based Kinesis Data Analytics application.

=head1 ATTRIBUTES


=head2 ConfigurationType => Str

  Describes whether to use the default CloudWatch logging configuration
for an application.


=head2 LogLevel => Str

  Describes the verbosity of the CloudWatch Logs for an application.


=head2 MetricsLevel => Str

  Describes the granularity of the CloudWatch Logs for an application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

