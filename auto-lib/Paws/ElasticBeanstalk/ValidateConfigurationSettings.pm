
package Paws::ElasticBeanstalk::ValidateConfigurationSettings;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::ConfigurationOptionSetting]', required => 1);
  has TemplateName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ValidateConfigurationSettings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticBeanstalk::ConfigurationSettingsValidationMessages');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ValidateConfigurationSettingsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ValidateConfigurationSettings - Arguments for method ValidateConfigurationSettings on L<Paws::ElasticBeanstalk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ValidateConfigurationSettings on the
L<AWS Elastic Beanstalk|Paws::ElasticBeanstalk> service. Use the attributes of this class
as arguments to method ValidateConfigurationSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ValidateConfigurationSettings.

=head1 SYNOPSIS

    my $elasticbeanstalk = Paws->service('ElasticBeanstalk');
    # To validate configuration settings
    # The following operation validates a CloudWatch custom metrics config
    # document:
    my $ConfigurationSettingsValidationMessages =
      $elasticbeanstalk->ValidateConfigurationSettings(
      {
        'ApplicationName' => 'my-app',
        'EnvironmentName' => 'my-env',
        'OptionSettings'  => [

          {
            'Namespace'  => 'aws:elasticbeanstalk:healthreporting:system',
            'OptionName' => 'ConfigDocument',
            'Value' =>
'{"CloudWatchMetrics": {"Environment": {"ApplicationLatencyP99.9": null,"InstancesSevere": 60,"ApplicationLatencyP90": 60,"ApplicationLatencyP99": null,"ApplicationLatencyP95": 60,"InstancesUnknown": 60,"ApplicationLatencyP85": 60,"InstancesInfo": null,"ApplicationRequests2xx": null,"InstancesDegraded": null,"InstancesWarning": 60,"ApplicationLatencyP50": 60,"ApplicationRequestsTotal": null,"InstancesNoData": null,"InstancesPending": 60,"ApplicationLatencyP10": null,"ApplicationRequests5xx": null,"ApplicationLatencyP75": null,"InstancesOk": 60,"ApplicationRequests3xx": null,"ApplicationRequests4xx": null},"Instance": {"ApplicationLatencyP99.9": null,"ApplicationLatencyP90": 60,"ApplicationLatencyP99": null,"ApplicationLatencyP95": null,"ApplicationLatencyP85": null,"CPUUser": 60,"ApplicationRequests2xx": null,"CPUIdle": null,"ApplicationLatencyP50": null,"ApplicationRequestsTotal": 60,"RootFilesystemUtil": null,"LoadAverage1min": null,"CPUIrq": null,"CPUNice": 60,"CPUIowait": 60,"ApplicationLatencyP10": null,"LoadAverage5min": null,"ApplicationRequests5xx": null,"ApplicationLatencyP75": 60,"CPUSystem": 60,"ApplicationRequests3xx": 60,"ApplicationRequests4xx": null,"InstanceHealth": null,"CPUSoftirq": 60}},"Version": 1}'
          }
        ]
      }
      );

    # Results:
    my $Messages = $ConfigurationSettingsValidationMessages->Messages;

# Returns a L<Paws::ElasticBeanstalk::ConfigurationSettingsValidationMessages> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk/ValidateConfigurationSettings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of the application that the configuration template or
environment belongs to.



=head2 EnvironmentName => Str

The name of the environment to validate the settings against.

Condition: You cannot specify both this and a configuration template
name.



=head2 B<REQUIRED> OptionSettings => ArrayRef[L<Paws::ElasticBeanstalk::ConfigurationOptionSetting>]

A list of the options and desired values to evaluate.



=head2 TemplateName => Str

The name of the configuration template to validate the settings
against.

Condition: You cannot specify both this and an environment name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ValidateConfigurationSettings in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

