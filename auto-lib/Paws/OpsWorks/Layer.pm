# Generated from default/object.tt
package Paws::OpsWorks::Layer;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef Undef/;
  use Paws::OpsWorks::Types qw/OpsWorks_VolumeConfiguration OpsWorks_LayerAttributes OpsWorks_Recipes OpsWorks_CloudWatchLogsConfiguration OpsWorks_LifecycleEventConfiguration/;
  has Arn => (is => 'ro', isa => Str);
  has Attributes => (is => 'ro', isa => OpsWorks_LayerAttributes);
  has AutoAssignElasticIps => (is => 'ro', isa => Bool);
  has AutoAssignPublicIps => (is => 'ro', isa => Bool);
  has CloudWatchLogsConfiguration => (is => 'ro', isa => OpsWorks_CloudWatchLogsConfiguration);
  has CreatedAt => (is => 'ro', isa => Str);
  has CustomInstanceProfileArn => (is => 'ro', isa => Str);
  has CustomJson => (is => 'ro', isa => Str);
  has CustomRecipes => (is => 'ro', isa => OpsWorks_Recipes);
  has CustomSecurityGroupIds => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has DefaultRecipes => (is => 'ro', isa => OpsWorks_Recipes);
  has DefaultSecurityGroupNames => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has EnableAutoHealing => (is => 'ro', isa => Bool);
  has InstallUpdatesOnBoot => (is => 'ro', isa => Bool);
  has LayerId => (is => 'ro', isa => Str);
  has LifecycleEventConfiguration => (is => 'ro', isa => OpsWorks_LifecycleEventConfiguration);
  has Name => (is => 'ro', isa => Str);
  has Packages => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Shortname => (is => 'ro', isa => Str);
  has StackId => (is => 'ro', isa => Str);
  has Type => (is => 'ro', isa => Str);
  has UseEbsOptimizedInstances => (is => 'ro', isa => Bool);
  has VolumeConfigurations => (is => 'ro', isa => ArrayRef[OpsWorks_VolumeConfiguration]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AutoAssignElasticIps' => {
                                           'type' => 'Bool'
                                         },
               'CustomSecurityGroupIds' => {
                                             'type' => 'ArrayRef[Str|Undef]'
                                           },
               'DefaultSecurityGroupNames' => {
                                                'type' => 'ArrayRef[Str|Undef]'
                                              },
               'UseEbsOptimizedInstances' => {
                                               'type' => 'Bool'
                                             },
               'Type' => {
                           'type' => 'Str'
                         },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'StackId' => {
                              'type' => 'Str'
                            },
               'AutoAssignPublicIps' => {
                                          'type' => 'Bool'
                                        },
               'Arn' => {
                          'type' => 'Str'
                        },
               'CustomJson' => {
                                 'type' => 'Str'
                               },
               'Packages' => {
                               'type' => 'ArrayRef[Str|Undef]'
                             },
               'DefaultRecipes' => {
                                     'class' => 'Paws::OpsWorks::Recipes',
                                     'type' => 'OpsWorks_Recipes'
                                   },
               'CustomInstanceProfileArn' => {
                                               'type' => 'Str'
                                             },
               'LayerId' => {
                              'type' => 'Str'
                            },
               'LifecycleEventConfiguration' => {
                                                  'class' => 'Paws::OpsWorks::LifecycleEventConfiguration',
                                                  'type' => 'OpsWorks_LifecycleEventConfiguration'
                                                },
               'InstallUpdatesOnBoot' => {
                                           'type' => 'Bool'
                                         },
               'VolumeConfigurations' => {
                                           'class' => 'Paws::OpsWorks::VolumeConfiguration',
                                           'type' => 'ArrayRef[OpsWorks_VolumeConfiguration]'
                                         },
               'EnableAutoHealing' => {
                                        'type' => 'Bool'
                                      },
               'Shortname' => {
                                'type' => 'Str'
                              },
               'CloudWatchLogsConfiguration' => {
                                                  'class' => 'Paws::OpsWorks::CloudWatchLogsConfiguration',
                                                  'type' => 'OpsWorks_CloudWatchLogsConfiguration'
                                                },
               'Attributes' => {
                                 'class' => 'Paws::OpsWorks::LayerAttributes',
                                 'type' => 'OpsWorks_LayerAttributes'
                               },
               'CustomRecipes' => {
                                    'class' => 'Paws::OpsWorks::Recipes',
                                    'type' => 'OpsWorks_Recipes'
                                  },
               'Name' => {
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

Paws::OpsWorks::Layer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::Layer object:

  $service_obj->Method(Att1 => { Arn => $value, ..., VolumeConfigurations => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::Layer object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Describes a layer.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Number (ARN) of a layer.


=head2 Attributes => OpsWorks_LayerAttributes

  The layer attributes.

For the C<HaproxyStatsPassword>, C<MysqlRootPassword>, and
C<GangliaPassword> attributes, AWS OpsWorks Stacks returns
C<*****FILTERED*****> instead of the actual value

For an ECS Cluster layer, AWS OpsWorks Stacks the C<EcsClusterArn>
attribute is set to the cluster's ARN.


=head2 AutoAssignElasticIps => Bool

  Whether to automatically assign an Elastic IP address
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html)
to the layer's instances. For more information, see How to Edit a Layer
(https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html).


=head2 AutoAssignPublicIps => Bool

  For stacks that are running in a VPC, whether to automatically assign a
public IP address to the layer's instances. For more information, see
How to Edit a Layer
(https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html).


=head2 CloudWatchLogsConfiguration => OpsWorks_CloudWatchLogsConfiguration

  The Amazon CloudWatch Logs configuration settings for the layer.


=head2 CreatedAt => Str

  Date when the layer was created.


=head2 CustomInstanceProfileArn => Str

  The ARN of the default IAM profile to be used for the layer's EC2
instances. For more information about IAM ARNs, see Using Identifiers
(https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html).


=head2 CustomJson => Str

  A JSON formatted string containing the layer's custom stack
configuration and deployment attributes.


=head2 CustomRecipes => OpsWorks_Recipes

  A C<LayerCustomRecipes> object that specifies the layer's custom
recipes.


=head2 CustomSecurityGroupIds => ArrayRef[Str|Undef]

  An array containing the layer's custom security group IDs.


=head2 DefaultRecipes => OpsWorks_Recipes

  AWS OpsWorks Stacks supports five lifecycle events: B<setup>,
B<configuration>, B<deploy>, B<undeploy>, and B<shutdown>. For each
layer, AWS OpsWorks Stacks runs a set of standard recipes for each
event. You can also provide custom recipes for any or all layers and
events. AWS OpsWorks Stacks runs custom event recipes after the
standard recipes. C<LayerCustomRecipes> specifies the custom recipes
for a particular layer to be run in response to each of the five
events.

To specify a recipe, use the cookbook's directory name in the
repository followed by two colons and the recipe name, which is the
recipe's file name without the C<.rb> extension. For example:
C<phpapp2::dbsetup> specifies the C<dbsetup.rb> recipe in the
repository's C<phpapp2> folder.


=head2 DefaultSecurityGroupNames => ArrayRef[Str|Undef]

  An array containing the layer's security group names.


=head2 EnableAutoHealing => Bool

  Whether auto healing is disabled for the layer.


=head2 InstallUpdatesOnBoot => Bool

  Whether to install operating system and package updates when the
instance boots. The default value is C<true>. If this value is set to
C<false>, you must then update your instances manually by using
CreateDeployment to run the C<update_dependencies> stack command or
manually running C<yum> (Amazon Linux) or C<apt-get> (Ubuntu) on the
instances.

We strongly recommend using the default value of C<true>, to ensure
that your instances have the latest security updates.


=head2 LayerId => Str

  The layer ID.


=head2 LifecycleEventConfiguration => OpsWorks_LifecycleEventConfiguration

  A C<LifeCycleEventConfiguration> object that specifies the Shutdown
event configuration.


=head2 Name => Str

  The layer name.


=head2 Packages => ArrayRef[Str|Undef]

  An array of C<Package> objects that describe the layer's packages.


=head2 Shortname => Str

  The layer short name.


=head2 StackId => Str

  The layer stack ID.


=head2 Type => Str

  The layer type.


=head2 UseEbsOptimizedInstances => Bool

  Whether the layer uses Amazon EBS-optimized instances.


=head2 VolumeConfigurations => ArrayRef[OpsWorks_VolumeConfiguration]

  A C<VolumeConfigurations> object that describes the layer's Amazon EBS
volumes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

