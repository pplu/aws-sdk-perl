package Paws::IoT::CloudwatchMetricAction;
  use Moose;
  has MetricName => (is => 'ro', isa => 'Str', request_name => 'metricName', traits => ['NameInRequest'], required => 1);
  has MetricNamespace => (is => 'ro', isa => 'Str', request_name => 'metricNamespace', traits => ['NameInRequest'], required => 1);
  has MetricTimestamp => (is => 'ro', isa => 'Str', request_name => 'metricTimestamp', traits => ['NameInRequest']);
  has MetricUnit => (is => 'ro', isa => 'Str', request_name => 'metricUnit', traits => ['NameInRequest'], required => 1);
  has MetricValue => (is => 'ro', isa => 'Str', request_name => 'metricValue', traits => ['NameInRequest'], required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CloudwatchMetricAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::CloudwatchMetricAction object:

  $service_obj->Method(Att1 => { MetricName => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::CloudwatchMetricAction object:

  $result = $service_obj->Method(...);
  $result->Att1->MetricName

=head1 DESCRIPTION

Describes an action that captures a CloudWatch metric.

=head1 ATTRIBUTES


=head2 B<REQUIRED> MetricName => Str

  The CloudWatch metric name.


=head2 B<REQUIRED> MetricNamespace => Str

  The CloudWatch metric namespace name.


=head2 MetricTimestamp => Str

  An optional Unix timestamp
(http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/cloudwatch_concepts.html#about_timestamp).


=head2 B<REQUIRED> MetricUnit => Str

  The metric unit
(http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/cloudwatch_concepts.html#Unit)
supported by CloudWatch.


=head2 B<REQUIRED> MetricValue => Str

  The CloudWatch metric value.


=head2 B<REQUIRED> RoleArn => Str

  The IAM role that allows access to the CloudWatch metric.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

