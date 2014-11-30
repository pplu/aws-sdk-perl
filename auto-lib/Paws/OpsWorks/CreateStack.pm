
package Paws::OpsWorks::CreateStack {
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::OpsWorks::StackAttributes');
  has ChefConfiguration => (is => 'ro', isa => 'Paws::OpsWorks::ChefConfiguration');
  has ConfigurationManager => (is => 'ro', isa => 'Paws::OpsWorks::StackConfigurationManager');
  has CustomCookbooksSource => (is => 'ro', isa => 'Paws::OpsWorks::Source');
  has CustomJson => (is => 'ro', isa => 'Str');
  has DefaultAvailabilityZone => (is => 'ro', isa => 'Str');
  has DefaultInstanceProfileArn => (is => 'ro', isa => 'Str', required => 1);
  has DefaultOs => (is => 'ro', isa => 'Str');
  has DefaultRootDeviceType => (is => 'ro', isa => 'Str');
  has DefaultSshKeyName => (is => 'ro', isa => 'Str');
  has DefaultSubnetId => (is => 'ro', isa => 'Str');
  has HostnameTheme => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Region => (is => 'ro', isa => 'Str', required => 1);
  has ServiceRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has UseCustomCookbooks => (is => 'ro', isa => 'Bool');
  has UseOpsworksSecurityGroups => (is => 'ro', isa => 'Bool');
  has VpcId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStack');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::CreateStackResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::CreateStack - Arguments for method CreateStack on Paws::OpsWorks

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStack on the 
AWS OpsWorks service. Use the attributes of this class
as arguments to method CreateStack.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to CreateStack.

As an example:

  $service_obj->CreateStack(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 Attributes => Paws::OpsWorks::StackAttributes

  

One or more user-defined key/value pairs to be added to the stack
attributes.










=head2 ChefConfiguration => Paws::OpsWorks::ChefConfiguration

  

A C<ChefConfiguration> object that specifies whether to enable
Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more
information, see Create a New Stack.










=head2 ConfigurationManager => Paws::OpsWorks::StackConfigurationManager

  

The configuration manager. When you clone a stack we recommend that you
use the configuration manager to specify the Chef version, 0.9, 11.4,
or 11.10. The default value is currently 11.4.










=head2 CustomCookbooksSource => Paws::OpsWorks::Source

  

=head2 CustomJson => Str

  

A string that contains user-defined, custom JSON. It is used to
override the corresponding default stack configuration JSON values. The
string should be in the following format and must escape characters
such as '"'.:

C<"{\"key1\": \"value1\", \"key2\": \"value2\",...}">

For more information on custom JSON, see Use Custom JSON to Modify the
Stack Configuration JSON.










=head2 DefaultAvailabilityZone => Str

  

The stack's default Availability Zone, which must be in the specified
region. For more information, see Regions and Endpoints. If you also
specify a value for C<DefaultSubnetId>, the subnet must be in the same
zone. For more information, see the C<VpcId> parameter description.










=head2 B<REQUIRED> DefaultInstanceProfileArn => Str

  

The ARN of an IAM profile that is the default profile for all of the
stack's EC2 instances. For more information about IAM ARNs, see Using
Identifiers.










=head2 DefaultOs => Str

  

The stack's default operating system, which must be set to C<Amazon
Linux> or C<Ubuntu 12.04 LTS>. The default option is C<Amazon Linux>.










=head2 DefaultRootDeviceType => Str

  

The default root device type. This value is used by default for all
instances in the stack, but you can override it when you create an
instance. The default option is C<instance-store>. For more
information, see Storage for the Root Device.










=head2 DefaultSshKeyName => Str

  

A default SSH key for the stack instances. You can override this value
when you create or update an instance.










=head2 DefaultSubnetId => Str

  

The stack's default subnet ID. All instances will be launched into this
subnet unless you specify otherwise when you create the instance. If
you also specify a value for C<DefaultAvailabilityZone>, the subnet
must be in that zone. For information on default values and when this
parameter is required, see the C<VpcId> parameter description.










=head2 HostnameTheme => Str

  

The stack's host name theme, with spaces are replaced by underscores.
The theme is used to generate host names for the stack's instances. By
default, C<HostnameTheme> is set to C<Layer_Dependent>, which creates
host names by appending integers to the layer's short name. The other
themes are:

=over

=item * C<Baked_Goods>

=item * C<Clouds>

=item * C<European_Cities>

=item * C<Fruits>

=item * C<Greek_Deities>

=item * C<Legendary_Creatures_from_Japan>

=item * C<Planets_and_Moons>

=item * C<Roman_Deities>

=item * C<Scottish_Islands>

=item * C<US_Cities>

=item * C<Wild_Cats>

=back

To obtain a generated host name, call C<GetHostNameSuggestion>, which
returns a host name based on the current theme.










=head2 B<REQUIRED> Name => Str

  

The stack name.










=head2 B<REQUIRED> Region => Str

  

The stack AWS region, such as "us-east-1". For more information about
Amazon regions, see Regions and Endpoints.










=head2 B<REQUIRED> ServiceRoleArn => Str

  

The stack AWS Identity and Access Management (IAM) role, which allows
AWS OpsWorks to work with AWS resources on your behalf. You must set
this parameter to the Amazon Resource Name (ARN) for an existing IAM
role. For more information about IAM ARNs, see Using Identifiers.










=head2 UseCustomCookbooks => Bool

  

Whether the stack uses custom cookbooks.










=head2 UseOpsworksSecurityGroups => Bool

  

Whether to associate the AWS OpsWorks built-in security groups with the
stack's layers.

AWS OpsWorks provides a standard set of built-in security groups, one
for each layer, which are associated with layers by default. With
C<UseOpsworksSecurityGroups> you can instead provide your own custom
security groups. C<UseOpsworksSecurityGroups> has the following
settings:

=over

=item * True - AWS OpsWorks automatically associates the appropriate
built-in security group with each layer (default setting). You can
associate additional security groups with a layer after you create it
but you cannot delete the built-in security group.

=item * False - AWS OpsWorks does not associate built-in security
groups with layers. You must create appropriate EC2 security groups and
associate a security group with each layer that you create. However,
you can still manually associate a built-in security group with a layer
on creation; custom security groups are required only for those layers
that need custom settings.

=back

For more information, see Create a New Stack.










=head2 VpcId => Str

  

The ID of the VPC that the stack is to be launched into. It must be in
the specified region. All instances will be launched into this VPC, and
you cannot change the ID later.

=over

=item * If your account supports EC2 Classic, the default value is no
VPC.

=item * If your account does not support EC2 Classic, the default value
is the default VPC for the specified region.

=back

If the VPC ID corresponds to a default VPC and you have specified
either the C<DefaultAvailabilityZone> or the C<DefaultSubnetId>
parameter only, AWS OpsWorks infers the value of the other parameter.
If you specify neither parameter, AWS OpsWorks sets these parameters to
the first valid Availability Zone for the specified region and the
corresponding default VPC subnet ID, respectively.

If you specify a nondefault VPC ID, note the following:

=over

=item * It must belong to a VPC in your account that is in the
specified region.

=item * You must specify a value for C<DefaultSubnetId>.

=back

For more information on how to use AWS OpsWorks with a VPC, see Running
a Stack in a VPC. For more information on default VPC and EC2 Classic,
see Supported Platforms.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for CreateStack in Paws::OpsWorks

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

