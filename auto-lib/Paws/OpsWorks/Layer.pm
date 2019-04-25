package Paws::OpsWorks::Layer;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Attributes => (is => 'ro', isa => 'Paws::OpsWorks::LayerAttributes');
  has AutoAssignElasticIps => (is => 'ro', isa => 'Bool');
  has AutoAssignPublicIps => (is => 'ro', isa => 'Bool');
  has CloudWatchLogsConfiguration => (is => 'ro', isa => 'Paws::OpsWorks::CloudWatchLogsConfiguration');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has CustomInstanceProfileArn => (is => 'ro', isa => 'Str');
  has CustomJson => (is => 'ro', isa => 'Str');
  has CustomRecipes => (is => 'ro', isa => 'Paws::OpsWorks::Recipes');
  has CustomSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DefaultRecipes => (is => 'ro', isa => 'Paws::OpsWorks::Recipes');
  has DefaultSecurityGroupNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EnableAutoHealing => (is => 'ro', isa => 'Bool');
  has InstallUpdatesOnBoot => (is => 'ro', isa => 'Bool');
  has LayerId => (is => 'ro', isa => 'Str');
  has LifecycleEventConfiguration => (is => 'ro', isa => 'Paws::OpsWorks::LifecycleEventConfiguration');
  has Name => (is => 'ro', isa => 'Str');
  has Packages => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Shortname => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has UseEbsOptimizedInstances => (is => 'ro', isa => 'Bool');
  has VolumeConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::VolumeConfiguration]');
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


=head2 Attributes => L<Paws::OpsWorks::LayerAttributes>

  The layer attributes.

For the C<HaproxyStatsPassword>, C<MysqlRootPassword>, and
C<GangliaPassword> attributes, AWS OpsWorks Stacks returns
C<*****FILTERED*****> instead of the actual value

For an ECS Cluster layer, AWS OpsWorks Stacks the C<EcsClusterArn>
attribute is set to the cluster's ARN.


=head2 AutoAssignElasticIps => Bool

  Whether to automatically assign an Elastic IP address
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html)
to the layer's instances. For more information, see How to Edit a Layer
(http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html).


=head2 AutoAssignPublicIps => Bool

  For stacks that are running in a VPC, whether to automatically assign a
public IP address to the layer's instances. For more information, see
How to Edit a Layer
(http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html).


=head2 CloudWatchLogsConfiguration => L<Paws::OpsWorks::CloudWatchLogsConfiguration>

  The Amazon CloudWatch Logs configuration settings for the layer.


=head2 CreatedAt => Str

  Date when the layer was created.


=head2 CustomInstanceProfileArn => Str

  The ARN of the default IAM profile to be used for the layer's EC2
instances. For more information about IAM ARNs, see Using Identifiers
(http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html).


=head2 CustomJson => Str

  A JSON formatted string containing the layer's custom stack
configuration and deployment attributes.


=head2 CustomRecipes => L<Paws::OpsWorks::Recipes>

  A C<LayerCustomRecipes> object that specifies the layer's custom
recipes.


=head2 CustomSecurityGroupIds => ArrayRef[Str|Undef]

  An array containing the layer's custom security group IDs.


=head2 DefaultRecipes => L<Paws::OpsWorks::Recipes>

  


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


=head2 LifecycleEventConfiguration => L<Paws::OpsWorks::LifecycleEventConfiguration>

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


=head2 VolumeConfigurations => ArrayRef[L<Paws::OpsWorks::VolumeConfiguration>]

  A C<VolumeConfigurations> object that describes the layer's Amazon EBS
volumes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

