package Paws::KinesisAnalyticsV2::MonitoringConfigurationUpdate;
  use Moose;
  has ConfigurationTypeUpdate => (is => 'ro', isa => 'Str');
  has LogLevelUpdate => (is => 'ro', isa => 'Str');
  has MetricsLevelUpdate => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::MonitoringConfigurationUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::MonitoringConfigurationUpdate object:

  $service_obj->Method(Att1 => { ConfigurationTypeUpdate => $value, ..., MetricsLevelUpdate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::MonitoringConfigurationUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->ConfigurationTypeUpdate

=head1 DESCRIPTION

Describes updates to configuration parameters for Amazon CloudWatch
logging for a Java-based Kinesis Data Analytics application.

=head1 ATTRIBUTES


=head2 ConfigurationTypeUpdate => Str

  Describes updates to whether to use the default CloudWatch logging
configuration for an application.


=head2 LogLevelUpdate => Str

  Describes updates to the verbosity of the CloudWatch Logs for an
application.


=head2 MetricsLevelUpdate => Str

  Describes updates to the granularity of the CloudWatch Logs for an
application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

