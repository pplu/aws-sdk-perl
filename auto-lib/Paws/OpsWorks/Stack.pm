package Paws::OpsWorks::Stack;
  use Moose;
  has AgentVersion => (is => 'ro', isa => 'Str');
  has Arn => (is => 'ro', isa => 'Str');
  has Attributes => (is => 'ro', isa => 'Paws::OpsWorks::StackAttributes');
  has ChefConfiguration => (is => 'ro', isa => 'Paws::OpsWorks::ChefConfiguration');
  has ConfigurationManager => (is => 'ro', isa => 'Paws::OpsWorks::StackConfigurationManager');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has CustomCookbooksSource => (is => 'ro', isa => 'Paws::OpsWorks::Source');
  has CustomJson => (is => 'ro', isa => 'Str');
  has DefaultAvailabilityZone => (is => 'ro', isa => 'Str');
  has DefaultInstanceProfileArn => (is => 'ro', isa => 'Str');
  has DefaultOs => (is => 'ro', isa => 'Str');
  has DefaultRootDeviceType => (is => 'ro', isa => 'Str');
  has DefaultSshKeyName => (is => 'ro', isa => 'Str');
  has DefaultSubnetId => (is => 'ro', isa => 'Str');
  has HostnameTheme => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Region => (is => 'ro', isa => 'Str');
  has ServiceRoleArn => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
  has UseCustomCookbooks => (is => 'ro', isa => 'Bool');
  has UseOpsworksSecurityGroups => (is => 'ro', isa => 'Bool');
  has VpcId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::Stack

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::Stack object:

  $service_obj->Method(Att1 => { AgentVersion => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::Stack object:

  $result = $service_obj->Method(...);
  $result->Att1->AgentVersion

=head1 DESCRIPTION

Describes a stack.

=head1 ATTRIBUTES


=head2 AgentVersion => Str

  The agent version. This parameter is set to C<LATEST> for auto-update.
or a version number for a fixed agent version.


=head2 Arn => Str

  The stack's ARN.


=head2 Attributes => L<Paws::OpsWorks::StackAttributes>

  The stack's attributes.


=head2 ChefConfiguration => L<Paws::OpsWorks::ChefConfiguration>

  A C<ChefConfiguration> object that specifies whether to enable
Berkshelf and the Berkshelf version. For more information, see Create a
New Stack
(http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html).


=head2 ConfigurationManager => L<Paws::OpsWorks::StackConfigurationManager>

  The configuration manager.


=head2 CreatedAt => Str

  The date when the stack was created.


=head2 CustomCookbooksSource => L<Paws::OpsWorks::Source>

  


=head2 CustomJson => Str

  A JSON object that contains user-defined attributes to be added to the
stack configuration and deployment attributes. You can use custom JSON
to override the corresponding default stack configuration attribute
values or to pass data to recipes. The string should be in the
following format:

C<"{\"key1\": \"value1\", \"key2\": \"value2\",...}">

For more information on custom JSON, see Use Custom JSON to Modify the
Stack Configuration Attributes
(http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html).


=head2 DefaultAvailabilityZone => Str

  The stack's default Availability Zone. For more information, see
Regions and Endpoints
(http://docs.aws.amazon.com/general/latest/gr/rande.html).


=head2 DefaultInstanceProfileArn => Str

  The ARN of an IAM profile that is the default profile for all of the
stack's EC2 instances. For more information about IAM ARNs, see Using
Identifiers
(http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html).


=head2 DefaultOs => Str

  The stack's default operating system.


=head2 DefaultRootDeviceType => Str

  The default root device type. This value is used by default for all
instances in the stack, but you can override it when you create an
instance. For more information, see Storage for the Root Device
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device).


=head2 DefaultSshKeyName => Str

  A default Amazon EC2 key pair for the stack's instances. You can
override this value when you create or update an instance.


=head2 DefaultSubnetId => Str

  The default subnet ID; applicable only if the stack is running in a
VPC.


=head2 HostnameTheme => Str

  The stack host name theme, with spaces replaced by underscores.


=head2 Name => Str

  The stack name.


=head2 Region => Str

  The stack AWS region, such as "ap-northeast-2". For more information
about AWS regions, see Regions and Endpoints
(http://docs.aws.amazon.com/general/latest/gr/rande.html).


=head2 ServiceRoleArn => Str

  The stack AWS Identity and Access Management (IAM) role.


=head2 StackId => Str

  The stack ID.


=head2 UseCustomCookbooks => Bool

  Whether the stack uses custom cookbooks.


=head2 UseOpsworksSecurityGroups => Bool

  Whether the stack automatically associates the AWS OpsWorks Stacks
built-in security groups with the stack's layers.


=head2 VpcId => Str

  The VPC ID; applicable only if the stack is running in a VPC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

