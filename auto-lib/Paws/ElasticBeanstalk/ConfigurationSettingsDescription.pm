# Generated from callresult_class.tt

package Paws::ElasticBeanstalk::ConfigurationSettingsDescription;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElasticBeanstalk::Types qw/ElasticBeanstalk_ConfigurationOptionSetting/;
  has ApplicationName => (is => 'ro', isa => Str);
  has DateCreated => (is => 'ro', isa => Str);
  has DateUpdated => (is => 'ro', isa => Str);
  has DeploymentStatus => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has EnvironmentName => (is => 'ro', isa => Str);
  has OptionSettings => (is => 'ro', isa => ArrayRef[ElasticBeanstalk_ConfigurationOptionSetting]);
  has PlatformArn => (is => 'ro', isa => Str);
  has SolutionStackName => (is => 'ro', isa => Str);
  has TemplateName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DateCreated' => {
                                  'type' => 'Str'
                                },
               'EnvironmentName' => {
                                      'type' => 'Str'
                                    },
               'TemplateName' => {
                                   'type' => 'Str'
                                 },
               'ApplicationName' => {
                                      'type' => 'Str'
                                    },
               'OptionSettings' => {
                                     'class' => 'Paws::ElasticBeanstalk::ConfigurationOptionSetting',
                                     'type' => 'ArrayRef[ElasticBeanstalk_ConfigurationOptionSetting]'
                                   },
               'PlatformArn' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SolutionStackName' => {
                                        'type' => 'Str'
                                      },
               'DateUpdated' => {
                                  'type' => 'Str'
                                },
               'Description' => {
                                  'type' => 'Str'
                                },
               'DeploymentStatus' => {
                                       'type' => 'Str'
                                     }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ConfigurationSettingsDescription

=head1 ATTRIBUTES


=head2 ApplicationName => Str

The name of the application associated with this configuration set.


=head2 DateCreated => Str

The date (in UTC time) when this configuration set was created.


=head2 DateUpdated => Str

The date (in UTC time) when this configuration set was last modified.


=head2 DeploymentStatus => Str

If this configuration set is associated with an environment, the
C<DeploymentStatus> parameter indicates the deployment status of this
configuration set:

=over

=item *

C<null>: This configuration is not associated with a running
environment.

=item *

C<pending>: This is a draft configuration that is not deployed to the
associated environment but is in the process of deploying.

=item *

C<deployed>: This is the configuration that is currently deployed to
the associated running environment.

=item *

C<failed>: This is a draft configuration that failed to successfully
deploy.

=back


Valid values are: C<"deployed">, C<"pending">, C<"failed">
=head2 Description => Str

Describes this configuration set.


=head2 EnvironmentName => Str

If not C<null>, the name of the environment for this configuration set.


=head2 OptionSettings => ArrayRef[ElasticBeanstalk_ConfigurationOptionSetting]

A list of the configuration options and their values in this
configuration set.


=head2 PlatformArn => Str

The ARN of the platform.


=head2 SolutionStackName => Str

The name of the solution stack this configuration set uses.


=head2 TemplateName => Str

If not C<null>, the name of the configuration template for this
configuration set.


=head2 _request_id => Str


=cut

