
use Paws::API;


package Paws::OpsWorks {
  use Moose;
  sub service { 'opsworks' }
  sub version { '2013-02-18' }
  sub target_prefix { 'OpsWorks_20130218' }
  sub json_version { "1.1" }

  with 'Paws::API::Caller', 'Paws::API::RegionalEndpointCaller', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub AssignInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::AssignInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssignVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::AssignVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateElasticIp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::AssociateElasticIp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachElasticLoadBalancer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::AttachElasticLoadBalancer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CloneStack {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::CloneStack', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::CreateApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::CreateDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::CreateInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLayer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::CreateLayer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStack {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::CreateStack', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUserProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::CreateUserProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DeleteApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DeleteInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLayer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DeleteLayer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStack {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DeleteStack', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUserProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DeleteUserProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterElasticIp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DeregisterElasticIp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DeregisterInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterRdsDbInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DeregisterRdsDbInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DeregisterVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeApps {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DescribeApps', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCommands {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DescribeCommands', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDeployments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DescribeDeployments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeElasticIps {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DescribeElasticIps', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeElasticLoadBalancers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DescribeElasticLoadBalancers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DescribeInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLayers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DescribeLayers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLoadBasedAutoScaling {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DescribeLoadBasedAutoScaling', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMyUserProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DescribeMyUserProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DescribePermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRaidArrays {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DescribeRaidArrays', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRdsDbInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DescribeRdsDbInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeServiceErrors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DescribeServiceErrors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStackProvisioningParameters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DescribeStackProvisioningParameters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStacks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DescribeStacks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStackSummary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DescribeStackSummary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTimeBasedAutoScaling {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DescribeTimeBasedAutoScaling', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUserProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DescribeUserProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVolumes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DescribeVolumes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachElasticLoadBalancer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DetachElasticLoadBalancer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateElasticIp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DisassociateElasticIp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetHostnameSuggestion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::GetHostnameSuggestion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RebootInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::RebootInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterElasticIp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::RegisterElasticIp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::RegisterInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterRdsDbInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::RegisterRdsDbInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::RegisterVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetLoadBasedAutoScaling {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::SetLoadBasedAutoScaling', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetPermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::SetPermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetTimeBasedAutoScaling {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::SetTimeBasedAutoScaling', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::StartInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartStack {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::StartStack', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::StopInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopStack {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::StopStack', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UnassignInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::UnassignInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UnassignVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::UnassignVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::UpdateApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateElasticIp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::UpdateElasticIp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::UpdateInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLayer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::UpdateLayer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMyUserProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::UpdateMyUserProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRdsDbInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::UpdateRdsDbInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStack {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::UpdateStack', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::UpdateUserProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::UpdateVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks - Perl Interface to AWS AWS OpsWorks

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=head1 DESCRIPTION



AWS OpsWorks

Welcome to the I<AWS OpsWorks API Reference>. This guide provides
descriptions, syntax, and usage examples about AWS OpsWorks actions and
data types, including common parameters and error codes.

AWS OpsWorks is an application management service that provides an
integrated experience for overseeing the complete application
lifecycle. For information about this product, go to the AWS OpsWorks
details page.

B<SDKs and CLI>

The most common way to use the AWS OpsWorks API is by using the AWS
Command Line Interface (CLI) or by using one of the AWS SDKs to
implement applications in your preferred language. For more
information, see:

=over

=item * AWS CLI

=item * AWS SDK for Java

=item * AWS SDK for .NET

=item * AWS SDK for PHP 2

=item * AWS SDK for Ruby

=item * AWS SDK for Node.js

=item * AWS SDK for Python(Boto)

=back

B<Endpoints>

AWS OpsWorks supports only one endpoint,
opsworks.us-east-1.amazonaws.com (HTTPS), so you must connect to that
endpoint. You can then use the API to direct AWS OpsWorks to create
stacks in any AWS Region.

B<Chef Versions>

When you call CreateStack, CloneStack, or UpdateStack we recommend you
use the C<ConfigurationManager> parameter to specify the Chef version,
0.9, 11.4, or 11.10. The default value is currently 11.10. For more
information, see Chef Versions.

You can still specify Chef 0.9 for your stack, but new features are not
available for Chef 0.9 stacks, and support is scheduled to end on July
24, 2014. We do not recommend using Chef 0.9 for new stacks, and we
recommend migrating your existing Chef 0.9 stacks to Chef 11.10 as soon
as possible.










=head1 METHODS

=head2 AssignInstance()

  Arguments described in: L<Paws::OpsWorks::AssignInstance>

  Returns: nothing

  

Assign a registered instance to a custom layer. You cannot use this
action with instances that were created with AWS OpsWorks.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 AssignVolume()

  Arguments described in: L<Paws::OpsWorks::AssignVolume>

  Returns: nothing

  

Assigns one of the stack's registered Amazon EBS volumes to a specified
instance. The volume must first be registered with the stack by calling
RegisterVolume. For more information, see Resource Management.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 AssociateElasticIp()

  Arguments described in: L<Paws::OpsWorks::AssociateElasticIp>

  Returns: nothing

  

Associates one of the stack's registered Elastic IP addresses with a
specified instance. The address must first be registered with the stack
by calling RegisterElasticIp. For more information, see Resource
Management.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 AttachElasticLoadBalancer()

  Arguments described in: L<Paws::OpsWorks::AttachElasticLoadBalancer>

  Returns: nothing

  

Attaches an Elastic Load Balancing load balancer to a specified layer.
For more information, see Elastic Load Balancing.

You must create the Elastic Load Balancing instance separately, by
using the Elastic Load Balancing console, API, or CLI. For more
information, see Elastic Load Balancing Developer Guide.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 CloneStack()

  Arguments described in: L<Paws::OpsWorks::CloneStack>

  Returns: L<Paws::OpsWorks::CloneStackResult>

  

Creates a clone of a specified stack. For more information, see Clone a
Stack.

B<Required Permissions>: To use this action, an IAM user must have an
attached policy that explicitly grants permissions. For more
information on user permissions, see Managing User Permissions.











=head2 CreateApp()

  Arguments described in: L<Paws::OpsWorks::CreateApp>

  Returns: L<Paws::OpsWorks::CreateAppResult>

  

Creates an app for a specified stack. For more information, see
Creating Apps.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 CreateDeployment()

  Arguments described in: L<Paws::OpsWorks::CreateDeployment>

  Returns: L<Paws::OpsWorks::CreateDeploymentResult>

  

Runs deployment or stack commands. For more information, see Deploying
Apps and Run Stack Commands.

B<Required Permissions>: To use this action, an IAM user must have a
Deploy or Manage permissions level for the stack, or an attached policy
that explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 CreateInstance()

  Arguments described in: L<Paws::OpsWorks::CreateInstance>

  Returns: L<Paws::OpsWorks::CreateInstanceResult>

  

Creates an instance in a specified stack. For more information, see
Adding an Instance to a Layer.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 CreateLayer()

  Arguments described in: L<Paws::OpsWorks::CreateLayer>

  Returns: L<Paws::OpsWorks::CreateLayerResult>

  

Creates a layer. For more information, see How to Create a Layer.

You should use B<CreateLayer> for noncustom layer types such as PHP App
Server only if the stack does not have an existing layer of that type.
A stack can have at most one instance of each noncustom layer; if you
attempt to create a second instance, B<CreateLayer> fails. A stack can
have an arbitrary number of custom layers, so you can call
B<CreateLayer> as many times as you like for that layer type.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 CreateStack()

  Arguments described in: L<Paws::OpsWorks::CreateStack>

  Returns: L<Paws::OpsWorks::CreateStackResult>

  

Creates a new stack. For more information, see Create a New Stack.

B<Required Permissions>: To use this action, an IAM user must have an
attached policy that explicitly grants permissions. For more
information on user permissions, see Managing User Permissions.











=head2 CreateUserProfile()

  Arguments described in: L<Paws::OpsWorks::CreateUserProfile>

  Returns: L<Paws::OpsWorks::CreateUserProfileResult>

  

Creates a new user profile.

B<Required Permissions>: To use this action, an IAM user must have an
attached policy that explicitly grants permissions. For more
information on user permissions, see Managing User Permissions.











=head2 DeleteApp()

  Arguments described in: L<Paws::OpsWorks::DeleteApp>

  Returns: nothing

  

Deletes a specified app.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 DeleteInstance()

  Arguments described in: L<Paws::OpsWorks::DeleteInstance>

  Returns: nothing

  

Deletes a specified instance, which terminates the associated Amazon
EC2 instance. You must stop an instance before you can delete it.

For more information, see Deleting Instances.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 DeleteLayer()

  Arguments described in: L<Paws::OpsWorks::DeleteLayer>

  Returns: nothing

  

Deletes a specified layer. You must first stop and then delete all
associated instances or unassign registered instances. For more
information, see How to Delete a Layer.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 DeleteStack()

  Arguments described in: L<Paws::OpsWorks::DeleteStack>

  Returns: nothing

  

Deletes a specified stack. You must first delete all instances, layers,
and apps or deregister registered instances. For more information, see
Shut Down a Stack.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 DeleteUserProfile()

  Arguments described in: L<Paws::OpsWorks::DeleteUserProfile>

  Returns: nothing

  

Deletes a user profile.

B<Required Permissions>: To use this action, an IAM user must have an
attached policy that explicitly grants permissions. For more
information on user permissions, see Managing User Permissions.











=head2 DeregisterElasticIp()

  Arguments described in: L<Paws::OpsWorks::DeregisterElasticIp>

  Returns: nothing

  

Deregisters a specified Elastic IP address. The address can then be
registered by another stack. For more information, see Resource
Management.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 DeregisterInstance()

  Arguments described in: L<Paws::OpsWorks::DeregisterInstance>

  Returns: nothing

  

Deregister a registered Amazon EC2 or on-premises instance. This action
removes the instance from the stack and returns it to your control.
This action can not be used with instances that were created with AWS
OpsWorks.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 DeregisterRdsDbInstance()

  Arguments described in: L<Paws::OpsWorks::DeregisterRdsDbInstance>

  Returns: nothing

  

Deregisters an Amazon RDS instance.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 DeregisterVolume()

  Arguments described in: L<Paws::OpsWorks::DeregisterVolume>

  Returns: nothing

  

Deregisters an Amazon EBS volume. The volume can then be registered by
another stack. For more information, see Resource Management.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 DescribeApps()

  Arguments described in: L<Paws::OpsWorks::DescribeApps>

  Returns: L<Paws::OpsWorks::DescribeAppsResult>

  

Requests a description of a specified set of apps.

You must specify at least one of the parameters.

B<Required Permissions>: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 DescribeCommands()

  Arguments described in: L<Paws::OpsWorks::DescribeCommands>

  Returns: L<Paws::OpsWorks::DescribeCommandsResult>

  

Describes the results of specified commands.

You must specify at least one of the parameters.

B<Required Permissions>: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 DescribeDeployments()

  Arguments described in: L<Paws::OpsWorks::DescribeDeployments>

  Returns: L<Paws::OpsWorks::DescribeDeploymentsResult>

  

Requests a description of a specified set of deployments.

You must specify at least one of the parameters.

B<Required Permissions>: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 DescribeElasticIps()

  Arguments described in: L<Paws::OpsWorks::DescribeElasticIps>

  Returns: L<Paws::OpsWorks::DescribeElasticIpsResult>

  

Describes Elastic IP addresses.

You must specify at least one of the parameters.

B<Required Permissions>: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 DescribeElasticLoadBalancers()

  Arguments described in: L<Paws::OpsWorks::DescribeElasticLoadBalancers>

  Returns: L<Paws::OpsWorks::DescribeElasticLoadBalancersResult>

  

Describes a stack's Elastic Load Balancing instances.

You must specify at least one of the parameters.

B<Required Permissions>: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 DescribeInstances()

  Arguments described in: L<Paws::OpsWorks::DescribeInstances>

  Returns: L<Paws::OpsWorks::DescribeInstancesResult>

  

Requests a description of a set of instances.

You must specify at least one of the parameters.

B<Required Permissions>: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 DescribeLayers()

  Arguments described in: L<Paws::OpsWorks::DescribeLayers>

  Returns: L<Paws::OpsWorks::DescribeLayersResult>

  

Requests a description of one or more layers in a specified stack.

You must specify at least one of the parameters.

B<Required Permissions>: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 DescribeLoadBasedAutoScaling()

  Arguments described in: L<Paws::OpsWorks::DescribeLoadBasedAutoScaling>

  Returns: L<Paws::OpsWorks::DescribeLoadBasedAutoScalingResult>

  

Describes load-based auto scaling configurations for specified layers.

You must specify at least one of the parameters.

B<Required Permissions>: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 DescribeMyUserProfile()

  Arguments described in: L<Paws::OpsWorks::DescribeMyUserProfile>

  Returns: L<Paws::OpsWorks::DescribeMyUserProfileResult>

  

Describes a user's SSH information.

B<Required Permissions>: To use this action, an IAM user must have
self-management enabled or an attached policy that explicitly grants
permissions. For more information on user permissions, see Managing
User Permissions.











=head2 DescribePermissions()

  Arguments described in: L<Paws::OpsWorks::DescribePermissions>

  Returns: L<Paws::OpsWorks::DescribePermissionsResult>

  

Describes the permissions for a specified stack.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 DescribeRaidArrays()

  Arguments described in: L<Paws::OpsWorks::DescribeRaidArrays>

  Returns: L<Paws::OpsWorks::DescribeRaidArraysResult>

  

Describe an instance's RAID arrays.

You must specify at least one of the parameters.

B<Required Permissions>: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 DescribeRdsDbInstances()

  Arguments described in: L<Paws::OpsWorks::DescribeRdsDbInstances>

  Returns: L<Paws::OpsWorks::DescribeRdsDbInstancesResult>

  

Describes Amazon RDS instances.

B<Required Permissions>: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 DescribeServiceErrors()

  Arguments described in: L<Paws::OpsWorks::DescribeServiceErrors>

  Returns: L<Paws::OpsWorks::DescribeServiceErrorsResult>

  

Describes AWS OpsWorks service errors.

B<Required Permissions>: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 DescribeStackProvisioningParameters()

  Arguments described in: L<Paws::OpsWorks::DescribeStackProvisioningParameters>

  Returns: L<Paws::OpsWorks::DescribeStackProvisioningParametersResult>

  

Requests a description of a stack's provisioning parameters.

B<Required Permissions>: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack or an attached
policy that explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 DescribeStacks()

  Arguments described in: L<Paws::OpsWorks::DescribeStacks>

  Returns: L<Paws::OpsWorks::DescribeStacksResult>

  

Requests a description of one or more stacks.

B<Required Permissions>: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 DescribeStackSummary()

  Arguments described in: L<Paws::OpsWorks::DescribeStackSummary>

  Returns: L<Paws::OpsWorks::DescribeStackSummaryResult>

  

Describes the number of layers and apps in a specified stack, and the
number of instances in each state, such as C<running_setup> or
C<online>.

B<Required Permissions>: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 DescribeTimeBasedAutoScaling()

  Arguments described in: L<Paws::OpsWorks::DescribeTimeBasedAutoScaling>

  Returns: L<Paws::OpsWorks::DescribeTimeBasedAutoScalingResult>

  

Describes time-based auto scaling configurations for specified
instances.

You must specify at least one of the parameters.

B<Required Permissions>: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 DescribeUserProfiles()

  Arguments described in: L<Paws::OpsWorks::DescribeUserProfiles>

  Returns: L<Paws::OpsWorks::DescribeUserProfilesResult>

  

Describe specified users.

B<Required Permissions>: To use this action, an IAM user must have an
attached policy that explicitly grants permissions. For more
information on user permissions, see Managing User Permissions.











=head2 DescribeVolumes()

  Arguments described in: L<Paws::OpsWorks::DescribeVolumes>

  Returns: L<Paws::OpsWorks::DescribeVolumesResult>

  

Describes an instance's Amazon EBS volumes.

You must specify at least one of the parameters.

B<Required Permissions>: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 DetachElasticLoadBalancer()

  Arguments described in: L<Paws::OpsWorks::DetachElasticLoadBalancer>

  Returns: nothing

  

Detaches a specified Elastic Load Balancing instance from its layer.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 DisassociateElasticIp()

  Arguments described in: L<Paws::OpsWorks::DisassociateElasticIp>

  Returns: nothing

  

Disassociates an Elastic IP address from its instance. The address
remains registered with the stack. For more information, see Resource
Management.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 GetHostnameSuggestion()

  Arguments described in: L<Paws::OpsWorks::GetHostnameSuggestion>

  Returns: L<Paws::OpsWorks::GetHostnameSuggestionResult>

  

Gets a generated host name for the specified layer, based on the
current host name theme.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 RebootInstance()

  Arguments described in: L<Paws::OpsWorks::RebootInstance>

  Returns: nothing

  

Reboots a specified instance. For more information, see Starting,
Stopping, and Rebooting Instances.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 RegisterElasticIp()

  Arguments described in: L<Paws::OpsWorks::RegisterElasticIp>

  Returns: L<Paws::OpsWorks::RegisterElasticIpResult>

  

Registers an Elastic IP address with a specified stack. An address can
be registered with only one stack at a time. If the address is already
registered, you must first deregister it by calling
DeregisterElasticIp. For more information, see Resource Management.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 RegisterInstance()

  Arguments described in: L<Paws::OpsWorks::RegisterInstance>

  Returns: L<Paws::OpsWorks::RegisterInstanceResult>

  

Registers instances with a specified stack that were created outside of
AWS OpsWorks.

We do not recommend using this action to register instances. The
complete registration operation has two primary steps, installing the
AWS OpsWorks agent on the instance and registering the instance with
the stack. C<RegisterInstance> handles only the second step. You should
instead use the AWS CLI C<register> command, which performs the entire
registration operation.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 RegisterRdsDbInstance()

  Arguments described in: L<Paws::OpsWorks::RegisterRdsDbInstance>

  Returns: nothing

  

Registers an Amazon RDS instance with a stack.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 RegisterVolume()

  Arguments described in: L<Paws::OpsWorks::RegisterVolume>

  Returns: L<Paws::OpsWorks::RegisterVolumeResult>

  

Registers an Amazon EBS volume with a specified stack. A volume can be
registered with only one stack at a time. If the volume is already
registered, you must first deregister it by calling DeregisterVolume.
For more information, see Resource Management.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 SetLoadBasedAutoScaling()

  Arguments described in: L<Paws::OpsWorks::SetLoadBasedAutoScaling>

  Returns: nothing

  

Specify the load-based auto scaling configuration for a specified
layer. For more information, see Managing Load with Time-based and
Load-based Instances.

To use load-based auto scaling, you must create a set of load-based
auto scaling instances. Load-based auto scaling operates only on the
instances from that set, so you must ensure that you have created
enough instances to handle the maximum anticipated load.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 SetPermission()

  Arguments described in: L<Paws::OpsWorks::SetPermission>

  Returns: nothing

  

Specifies a user's permissions. For more information, see Security and
Permissions.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 SetTimeBasedAutoScaling()

  Arguments described in: L<Paws::OpsWorks::SetTimeBasedAutoScaling>

  Returns: nothing

  

Specify the time-based auto scaling configuration for a specified
instance. For more information, see Managing Load with Time-based and
Load-based Instances.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 StartInstance()

  Arguments described in: L<Paws::OpsWorks::StartInstance>

  Returns: nothing

  

Starts a specified instance. For more information, see Starting,
Stopping, and Rebooting Instances.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 StartStack()

  Arguments described in: L<Paws::OpsWorks::StartStack>

  Returns: nothing

  

Starts a stack's instances.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 StopInstance()

  Arguments described in: L<Paws::OpsWorks::StopInstance>

  Returns: nothing

  

Stops a specified instance. When you stop a standard instance, the data
disappears and must be reinstalled when you restart the instance. You
can stop an Amazon EBS-backed instance without losing data. For more
information, see Starting, Stopping, and Rebooting Instances.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 StopStack()

  Arguments described in: L<Paws::OpsWorks::StopStack>

  Returns: nothing

  

Stops a specified stack.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 UnassignInstance()

  Arguments described in: L<Paws::OpsWorks::UnassignInstance>

  Returns: nothing

  

Unassigns a registered instance from all of it's layers. The instance
remains in the stack as an unassigned instance and can be assigned to
another layer, as needed. You cannot use this action with instances
that were created with AWS OpsWorks.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 UnassignVolume()

  Arguments described in: L<Paws::OpsWorks::UnassignVolume>

  Returns: nothing

  

Unassigns an assigned Amazon EBS volume. The volume remains registered
with the stack. For more information, see Resource Management.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 UpdateApp()

  Arguments described in: L<Paws::OpsWorks::UpdateApp>

  Returns: nothing

  

Updates a specified app.

B<Required Permissions>: To use this action, an IAM user must have a
Deploy or Manage permissions level for the stack, or an attached policy
that explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 UpdateElasticIp()

  Arguments described in: L<Paws::OpsWorks::UpdateElasticIp>

  Returns: nothing

  

Updates a registered Elastic IP address's name. For more information,
see Resource Management.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 UpdateInstance()

  Arguments described in: L<Paws::OpsWorks::UpdateInstance>

  Returns: nothing

  

Updates a specified instance.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 UpdateLayer()

  Arguments described in: L<Paws::OpsWorks::UpdateLayer>

  Returns: nothing

  

Updates a specified layer.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 UpdateMyUserProfile()

  Arguments described in: L<Paws::OpsWorks::UpdateMyUserProfile>

  Returns: nothing

  

Updates a user's SSH public key.

B<Required Permissions>: To use this action, an IAM user must have
self-management enabled or an attached policy that explicitly grants
permissions. For more information on user permissions, see Managing
User Permissions.











=head2 UpdateRdsDbInstance()

  Arguments described in: L<Paws::OpsWorks::UpdateRdsDbInstance>

  Returns: nothing

  

Updates an Amazon RDS instance.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 UpdateStack()

  Arguments described in: L<Paws::OpsWorks::UpdateStack>

  Returns: nothing

  

Updates a specified stack.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head2 UpdateUserProfile()

  Arguments described in: L<Paws::OpsWorks::UpdateUserProfile>

  Returns: nothing

  

Updates a specified user profile.

B<Required Permissions>: To use this action, an IAM user must have an
attached policy that explicitly grants permissions. For more
information on user permissions, see Managing User Permissions.











=head2 UpdateVolume()

  Arguments described in: L<Paws::OpsWorks::UpdateVolume>

  Returns: nothing

  

Updates an Amazon EBS volume's name or mount point. For more
information, see Resource Management.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

