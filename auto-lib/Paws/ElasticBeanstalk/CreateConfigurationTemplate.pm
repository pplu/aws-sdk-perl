
package Paws::ElasticBeanstalk::CreateConfigurationTemplate;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::ConfigurationOptionSetting]');
  has PlatformArn => (is => 'ro', isa => 'Str');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has SourceConfiguration => (is => 'ro', isa => 'Paws::ElasticBeanstalk::SourceConfiguration');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::Tag]');
  has TemplateName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConfigurationTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticBeanstalk::ConfigurationSettingsDescription');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateConfigurationTemplateResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::CreateConfigurationTemplate - Arguments for method CreateConfigurationTemplate on L<Paws::ElasticBeanstalk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConfigurationTemplate on the
L<AWS Elastic Beanstalk|Paws::ElasticBeanstalk> service. Use the attributes of this class
as arguments to method CreateConfigurationTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConfigurationTemplate.

=head1 SYNOPSIS

    my $elasticbeanstalk = Paws->service('ElasticBeanstalk');
 # To create a configuration template
 # The following operation creates a configuration template named my-app-v1 from
 # the settings applied to an environment with the id e-rpqsewtp2j:
    my $ConfigurationSettingsDescription =
      $elasticbeanstalk->CreateConfigurationTemplate(
      'ApplicationName' => 'my-app',
      'EnvironmentId'   => 'e-rpqsewtp2j',
      'TemplateName'    => 'my-app-v1'
      );

    # Results:
    my $ApplicationName = $ConfigurationSettingsDescription->ApplicationName;
    my $DateCreated     = $ConfigurationSettingsDescription->DateCreated;
    my $DateUpdated     = $ConfigurationSettingsDescription->DateUpdated;
    my $SolutionStackName =
      $ConfigurationSettingsDescription->SolutionStackName;
    my $TemplateName = $ConfigurationSettingsDescription->TemplateName;

 # Returns a L<Paws::ElasticBeanstalk::ConfigurationSettingsDescription> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk/CreateConfigurationTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of the Elastic Beanstalk application to associate with this
configuration template.



=head2 Description => Str

An optional description for this configuration.



=head2 EnvironmentId => Str

The ID of an environment whose settings you want to use to create the
configuration template. You must specify C<EnvironmentId> if you don't
specify C<PlatformArn>, C<SolutionStackName>, or
C<SourceConfiguration>.



=head2 OptionSettings => ArrayRef[L<Paws::ElasticBeanstalk::ConfigurationOptionSetting>]

Option values for the Elastic Beanstalk configuration, such as the
instance type. If specified, these values override the values obtained
from the solution stack or the source configuration template. For a
complete list of Elastic Beanstalk configuration options, see Option
Values
(https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options.html)
in the I<AWS Elastic Beanstalk Developer Guide>.



=head2 PlatformArn => Str

The Amazon Resource Name (ARN) of the custom platform. For more
information, see Custom Platforms
(https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/custom-platforms.html)
in the I<AWS Elastic Beanstalk Developer Guide>.

If you specify C<PlatformArn>, then don't specify C<SolutionStackName>.



=head2 SolutionStackName => Str

The name of an Elastic Beanstalk solution stack (platform version) that
this configuration uses. For example, C<64bit Amazon Linux 2013.09
running Tomcat 7 Java 7>. A solution stack specifies the operating
system, runtime, and application server for a configuration template.
It also determines the set of configuration options as well as the
possible and default values. For more information, see Supported
Platforms
(https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/concepts.platforms.html)
in the I<AWS Elastic Beanstalk Developer Guide>.

You must specify C<SolutionStackName> if you don't specify
C<PlatformArn>, C<EnvironmentId>, or C<SourceConfiguration>.

Use the C<ListAvailableSolutionStacks>
(https://docs.aws.amazon.com/elasticbeanstalk/latest/api/API_ListAvailableSolutionStacks.html)
API to obtain a list of available solution stacks.



=head2 SourceConfiguration => L<Paws::ElasticBeanstalk::SourceConfiguration>

An Elastic Beanstalk configuration template to base this one on. If
specified, Elastic Beanstalk uses the configuration values from the
specified configuration template to create a new configuration.

Values specified in C<OptionSettings> override any values obtained from
the C<SourceConfiguration>.

You must specify C<SourceConfiguration> if you don't specify
C<PlatformArn>, C<EnvironmentId>, or C<SolutionStackName>.

Constraint: If both solution stack name and source configuration are
specified, the solution stack of the source configuration template must
match the specified solution stack name.



=head2 Tags => ArrayRef[L<Paws::ElasticBeanstalk::Tag>]

Specifies the tags applied to the configuration template.



=head2 B<REQUIRED> TemplateName => Str

The name of the configuration template.

Constraint: This name must be unique per application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConfigurationTemplate in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

