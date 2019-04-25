
package Paws::ElasticBeanstalk::UpdateConfigurationTemplate;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::ConfigurationOptionSetting]');
  has OptionsToRemove => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::OptionSpecification]');
  has TemplateName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConfigurationTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticBeanstalk::ConfigurationSettingsDescription');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateConfigurationTemplateResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::UpdateConfigurationTemplate - Arguments for method UpdateConfigurationTemplate on L<Paws::ElasticBeanstalk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConfigurationTemplate on the
L<AWS Elastic Beanstalk|Paws::ElasticBeanstalk> service. Use the attributes of this class
as arguments to method UpdateConfigurationTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConfigurationTemplate.

=head1 SYNOPSIS

    my $elasticbeanstalk = Paws->service('ElasticBeanstalk');
    # To update a configuration template
    # The following operation removes the configured CloudWatch custom health
    # metrics configuration ConfigDocument from a saved configuration template
    # named my-template:
    my $ConfigurationSettingsDescription =
      $elasticbeanstalk->UpdateConfigurationTemplate(
      {
        'ApplicationName' => 'my-app',
        'OptionsToRemove' => [

          {
            'Namespace'  => 'aws:elasticbeanstalk:healthreporting:system',
            'OptionName' => 'ConfigDocument'
          }
        ],
        'TemplateName' => 'my-template'
      }
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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk/UpdateConfigurationTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of the application associated with the configuration template
to update.

If no application is found with this name,
C<UpdateConfigurationTemplate> returns an C<InvalidParameterValue>
error.



=head2 Description => Str

A new description for the configuration.



=head2 OptionSettings => ArrayRef[L<Paws::ElasticBeanstalk::ConfigurationOptionSetting>]

A list of configuration option settings to update with the new
specified option value.



=head2 OptionsToRemove => ArrayRef[L<Paws::ElasticBeanstalk::OptionSpecification>]

A list of configuration options to remove from the configuration set.

Constraint: You can remove only C<UserDefined> configuration options.



=head2 B<REQUIRED> TemplateName => Str

The name of the configuration template to update.

If no configuration template is found with this name,
C<UpdateConfigurationTemplate> returns an C<InvalidParameterValue>
error.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConfigurationTemplate in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

