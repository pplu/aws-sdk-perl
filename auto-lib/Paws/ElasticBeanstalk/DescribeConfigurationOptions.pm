
package Paws::ElasticBeanstalk::DescribeConfigurationOptions;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has Options => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::OptionSpecification]');
  has PlatformArn => (is => 'ro', isa => 'Str');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticBeanstalk::ConfigurationOptionsDescription');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationOptionsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::DescribeConfigurationOptions - Arguments for method DescribeConfigurationOptions on L<Paws::ElasticBeanstalk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeConfigurationOptions on the
L<AWS Elastic Beanstalk|Paws::ElasticBeanstalk> service. Use the attributes of this class
as arguments to method DescribeConfigurationOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeConfigurationOptions.

=head1 SYNOPSIS

    my $elasticbeanstalk = Paws->service('ElasticBeanstalk');
    # To view configuration options for an environment
    # The following operation retrieves descriptions of all available
    # configuration options for an environment named my-env:
    my $ConfigurationOptionsDescription =
      $elasticbeanstalk->DescribeConfigurationOptions(
      {
        'ApplicationName' => 'my-app',
        'EnvironmentName' => 'my-env'
      }
      );

    # Results:
    my $Options = $ConfigurationOptionsDescription->Options;

  # Returns a L<Paws::ElasticBeanstalk::ConfigurationOptionsDescription> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk/DescribeConfigurationOptions>

=head1 ATTRIBUTES


=head2 ApplicationName => Str

The name of the application associated with the configuration template
or environment. Only needed if you want to describe the configuration
options associated with either the configuration template or
environment.



=head2 EnvironmentName => Str

The name of the environment whose configuration options you want to
describe.



=head2 Options => ArrayRef[L<Paws::ElasticBeanstalk::OptionSpecification>]

If specified, restricts the descriptions to only the specified options.



=head2 PlatformArn => Str

The ARN of the custom platform.



=head2 SolutionStackName => Str

The name of the solution stack whose configuration options you want to
describe.



=head2 TemplateName => Str

The name of the configuration template whose configuration options you
want to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeConfigurationOptions in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

