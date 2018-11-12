package Paws::OpsWorks;
  use Moose;
  sub service { 'opsworks' }
  sub signing_name { 'opsworks' }
  sub version { '2013-02-18' }
  sub target_prefix { 'OpsWorks_20130218' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
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
  sub DeregisterEcsCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DeregisterEcsCluster', @_);
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
  sub DescribeAgentVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DescribeAgentVersions', @_);
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
  sub DescribeEcsClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DescribeEcsClusters', @_);
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
  sub DescribeOperatingSystems {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::DescribeOperatingSystems', @_);
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
  sub GrantAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::GrantAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::ListTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RebootInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::RebootInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterEcsCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::RegisterEcsCluster', @_);
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
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::TagResource', @_);
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
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorks::UntagResource', @_);
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
  
  sub DescribeAllEcsClusters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEcsClusters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeEcsClusters(@_, NextToken => $next_result->NextToken);
        push @{ $result->EcsClusters }, @{ $next_result->EcsClusters };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EcsClusters') foreach (@{ $result->EcsClusters });
        $result = $self->DescribeEcsClusters(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EcsClusters') foreach (@{ $result->EcsClusters });
    }

    return undef
  }


  sub operations { qw/AssignInstance AssignVolume AssociateElasticIp AttachElasticLoadBalancer CloneStack CreateApp CreateDeployment CreateInstance CreateLayer CreateStack CreateUserProfile DeleteApp DeleteInstance DeleteLayer DeleteStack DeleteUserProfile DeregisterEcsCluster DeregisterElasticIp DeregisterInstance DeregisterRdsDbInstance DeregisterVolume DescribeAgentVersions DescribeApps DescribeCommands DescribeDeployments DescribeEcsClusters DescribeElasticIps DescribeElasticLoadBalancers DescribeInstances DescribeLayers DescribeLoadBasedAutoScaling DescribeMyUserProfile DescribeOperatingSystems DescribePermissions DescribeRaidArrays DescribeRdsDbInstances DescribeServiceErrors DescribeStackProvisioningParameters DescribeStacks DescribeStackSummary DescribeTimeBasedAutoScaling DescribeUserProfiles DescribeVolumes DetachElasticLoadBalancer DisassociateElasticIp GetHostnameSuggestion GrantAccess ListTags RebootInstance RegisterEcsCluster RegisterElasticIp RegisterInstance RegisterRdsDbInstance RegisterVolume SetLoadBasedAutoScaling SetPermission SetTimeBasedAutoScaling StartInstance StartStack StopInstance StopStack TagResource UnassignInstance UnassignVolume UntagResource UpdateApp UpdateElasticIp UpdateInstance UpdateLayer UpdateMyUserProfile UpdateRdsDbInstance UpdateStack UpdateUserProfile UpdateVolume / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks - Perl Interface to AWS AWS OpsWorks

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('OpsWorks');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AWS OpsWorks

Welcome to the I<AWS OpsWorks Stacks API Reference>. This guide
provides descriptions, syntax, and usage examples for AWS OpsWorks
Stacks actions and data types, including common parameters and error
codes.

AWS OpsWorks Stacks is an application management service that provides
an integrated experience for overseeing the complete application
lifecycle. For information about this product, go to the AWS OpsWorks
(http://aws.amazon.com/opsworks/) details page.

B<SDKs and CLI>

The most common way to use the AWS OpsWorks Stacks API is by using the
AWS Command Line Interface (CLI) or by using one of the AWS SDKs to
implement applications in your preferred language. For more
information, see:

=over

=item *

AWS CLI
(http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html)

=item *

AWS SDK for Java
(http://docs.aws.amazon.com/AWSJavaSDK/latest/javadoc/com/amazonaws/services/opsworks/AWSOpsWorksClient.html)

=item *

AWS SDK for .NET
(http://docs.aws.amazon.com/sdkfornet/latest/apidocs/html/N_Amazon_OpsWorks.htm)

=item *

AWS SDK for PHP 2
(http://docs.aws.amazon.com/aws-sdk-php-2/latest/class-Aws.OpsWorks.OpsWorksClient.html)

=item *

AWS SDK for Ruby (http://docs.aws.amazon.com/sdkforruby/api/)

=item *

AWS SDK for Node.js
(http://aws.amazon.com/documentation/sdkforjavascript/)

=item *

AWS SDK for Python(Boto)
(http://docs.pythonboto.org/en/latest/ref/opsworks.html)

=back

B<Endpoints>

AWS OpsWorks Stacks supports the following endpoints, all HTTPS. You
must connect to one of the following endpoints. Stacks can only be
accessed or managed within the endpoint in which they are created.

=over

=item *

opsworks.us-east-1.amazonaws.com

=item *

opsworks.us-east-2.amazonaws.com

=item *

opsworks.us-west-1.amazonaws.com

=item *

opsworks.us-west-2.amazonaws.com

=item *

opsworks.ca-central-1.amazonaws.com (API only; not available in the AWS
console)

=item *

opsworks.eu-west-1.amazonaws.com

=item *

opsworks.eu-west-2.amazonaws.com

=item *

opsworks.eu-west-3.amazonaws.com

=item *

opsworks.eu-central-1.amazonaws.com

=item *

opsworks.ap-northeast-1.amazonaws.com

=item *

opsworks.ap-northeast-2.amazonaws.com

=item *

opsworks.ap-south-1.amazonaws.com

=item *

opsworks.ap-southeast-1.amazonaws.com

=item *

opsworks.ap-southeast-2.amazonaws.com

=item *

opsworks.sa-east-1.amazonaws.com

=back

B<Chef Versions>

When you call CreateStack, CloneStack, or UpdateStack we recommend you
use the C<ConfigurationManager> parameter to specify the Chef version.
The recommended and default value for Linux stacks is currently 12.
Windows stacks use Chef 12.2. For more information, see Chef Versions
(http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-chef11.html).

You can specify Chef 12, 11.10, or 11.4 for your Linux stack. We
recommend migrating your existing Linux stacks to Chef 12 as soon as
possible.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18>


=head1 METHODS

=head2 AssignInstance

=over

=item InstanceId => Str

=item LayerIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::OpsWorks::AssignInstance>

Returns: nothing

Assign a registered instance to a layer.

=over

=item *

You can assign registered on-premises instances to any layer type.

=item *

You can assign registered Amazon EC2 instances only to custom layers.

=item *

You cannot use this action with instances that were created with AWS
OpsWorks Stacks.

=back

B<Required Permissions>: To use this action, an AWS Identity and Access
Management (IAM) user must have a Manage permissions level for the
stack or an attached policy that explicitly grants permissions. For
more information on user permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 AssignVolume

=over

=item VolumeId => Str

=item [InstanceId => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorks::AssignVolume>

Returns: nothing

Assigns one of the stack's registered Amazon EBS volumes to a specified
instance. The volume must first be registered with the stack by calling
RegisterVolume. After you register the volume, you must call
UpdateVolume to specify a mount point before calling C<AssignVolume>.
For more information, see Resource Management
(http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 AssociateElasticIp

=over

=item ElasticIp => Str

=item [InstanceId => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorks::AssociateElasticIp>

Returns: nothing

Associates one of the stack's registered Elastic IP addresses with a
specified instance. The address must first be registered with the stack
by calling RegisterElasticIp. For more information, see Resource
Management
(http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 AttachElasticLoadBalancer

=over

=item ElasticLoadBalancerName => Str

=item LayerId => Str


=back

Each argument is described in detail in: L<Paws::OpsWorks::AttachElasticLoadBalancer>

Returns: nothing

Attaches an Elastic Load Balancing load balancer to a specified layer.
AWS OpsWorks Stacks does not support Application Load Balancer. You can
only use Classic Load Balancer with AWS OpsWorks Stacks. For more
information, see Elastic Load Balancing
(http://docs.aws.amazon.com/opsworks/latest/userguide/layers-elb.html).

You must create the Elastic Load Balancing instance separately, by
using the Elastic Load Balancing console, API, or CLI. For more
information, see Elastic Load Balancing Developer Guide
(http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/Welcome.html).

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 CloneStack

=over

=item ServiceRoleArn => Str

=item SourceStackId => Str

=item [AgentVersion => Str]

=item [Attributes => L<Paws::OpsWorks::StackAttributes>]

=item [ChefConfiguration => L<Paws::OpsWorks::ChefConfiguration>]

=item [CloneAppIds => ArrayRef[Str|Undef]]

=item [ClonePermissions => Bool]

=item [ConfigurationManager => L<Paws::OpsWorks::StackConfigurationManager>]

=item [CustomCookbooksSource => L<Paws::OpsWorks::Source>]

=item [CustomJson => Str]

=item [DefaultAvailabilityZone => Str]

=item [DefaultInstanceProfileArn => Str]

=item [DefaultOs => Str]

=item [DefaultRootDeviceType => Str]

=item [DefaultSshKeyName => Str]

=item [DefaultSubnetId => Str]

=item [HostnameTheme => Str]

=item [Name => Str]

=item [Region => Str]

=item [UseCustomCookbooks => Bool]

=item [UseOpsworksSecurityGroups => Bool]

=item [VpcId => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorks::CloneStack>

Returns: a L<Paws::OpsWorks::CloneStackResult> instance

Creates a clone of a specified stack. For more information, see Clone a
Stack
(http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-cloning.html).
By default, all parameters are set to the values used by the parent
stack.

B<Required Permissions>: To use this action, an IAM user must have an
attached policy that explicitly grants permissions. For more
information about user permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 CreateApp

=over

=item Name => Str

=item StackId => Str

=item Type => Str

=item [AppSource => L<Paws::OpsWorks::Source>]

=item [Attributes => L<Paws::OpsWorks::AppAttributes>]

=item [DataSources => ArrayRef[L<Paws::OpsWorks::DataSource>]]

=item [Description => Str]

=item [Domains => ArrayRef[Str|Undef]]

=item [EnableSsl => Bool]

=item [Environment => ArrayRef[L<Paws::OpsWorks::EnvironmentVariable>]]

=item [Shortname => Str]

=item [SslConfiguration => L<Paws::OpsWorks::SslConfiguration>]


=back

Each argument is described in detail in: L<Paws::OpsWorks::CreateApp>

Returns: a L<Paws::OpsWorks::CreateAppResult> instance

Creates an app for a specified stack. For more information, see
Creating Apps
(http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html).

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 CreateDeployment

=over

=item Command => L<Paws::OpsWorks::DeploymentCommand>

=item StackId => Str

=item [AppId => Str]

=item [Comment => Str]

=item [CustomJson => Str]

=item [InstanceIds => ArrayRef[Str|Undef]]

=item [LayerIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::OpsWorks::CreateDeployment>

Returns: a L<Paws::OpsWorks::CreateDeploymentResult> instance

Runs deployment or stack commands. For more information, see Deploying
Apps
(http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-deploying.html)
and Run Stack Commands
(http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-commands.html).

B<Required Permissions>: To use this action, an IAM user must have a
Deploy or Manage permissions level for the stack, or an attached policy
that explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 CreateInstance

=over

=item InstanceType => Str

=item LayerIds => ArrayRef[Str|Undef]

=item StackId => Str

=item [AgentVersion => Str]

=item [AmiId => Str]

=item [Architecture => Str]

=item [AutoScalingType => Str]

=item [AvailabilityZone => Str]

=item [BlockDeviceMappings => ArrayRef[L<Paws::OpsWorks::BlockDeviceMapping>]]

=item [EbsOptimized => Bool]

=item [Hostname => Str]

=item [InstallUpdatesOnBoot => Bool]

=item [Os => Str]

=item [RootDeviceType => Str]

=item [SshKeyName => Str]

=item [SubnetId => Str]

=item [Tenancy => Str]

=item [VirtualizationType => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorks::CreateInstance>

Returns: a L<Paws::OpsWorks::CreateInstanceResult> instance

Creates an instance in a specified stack. For more information, see
Adding an Instance to a Layer
(http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html).

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 CreateLayer

=over

=item Name => Str

=item Shortname => Str

=item StackId => Str

=item Type => Str

=item [Attributes => L<Paws::OpsWorks::LayerAttributes>]

=item [AutoAssignElasticIps => Bool]

=item [AutoAssignPublicIps => Bool]

=item [CloudWatchLogsConfiguration => L<Paws::OpsWorks::CloudWatchLogsConfiguration>]

=item [CustomInstanceProfileArn => Str]

=item [CustomJson => Str]

=item [CustomRecipes => L<Paws::OpsWorks::Recipes>]

=item [CustomSecurityGroupIds => ArrayRef[Str|Undef]]

=item [EnableAutoHealing => Bool]

=item [InstallUpdatesOnBoot => Bool]

=item [LifecycleEventConfiguration => L<Paws::OpsWorks::LifecycleEventConfiguration>]

=item [Packages => ArrayRef[Str|Undef]]

=item [UseEbsOptimizedInstances => Bool]

=item [VolumeConfigurations => ArrayRef[L<Paws::OpsWorks::VolumeConfiguration>]]


=back

Each argument is described in detail in: L<Paws::OpsWorks::CreateLayer>

Returns: a L<Paws::OpsWorks::CreateLayerResult> instance

Creates a layer. For more information, see How to Create a Layer
(http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-create.html).

You should use B<CreateLayer> for noncustom layer types such as PHP App
Server only if the stack does not have an existing layer of that type.
A stack can have at most one instance of each noncustom layer; if you
attempt to create a second instance, B<CreateLayer> fails. A stack can
have an arbitrary number of custom layers, so you can call
B<CreateLayer> as many times as you like for that layer type.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 CreateStack

=over

=item DefaultInstanceProfileArn => Str

=item Name => Str

=item Region => Str

=item ServiceRoleArn => Str

=item [AgentVersion => Str]

=item [Attributes => L<Paws::OpsWorks::StackAttributes>]

=item [ChefConfiguration => L<Paws::OpsWorks::ChefConfiguration>]

=item [ConfigurationManager => L<Paws::OpsWorks::StackConfigurationManager>]

=item [CustomCookbooksSource => L<Paws::OpsWorks::Source>]

=item [CustomJson => Str]

=item [DefaultAvailabilityZone => Str]

=item [DefaultOs => Str]

=item [DefaultRootDeviceType => Str]

=item [DefaultSshKeyName => Str]

=item [DefaultSubnetId => Str]

=item [HostnameTheme => Str]

=item [UseCustomCookbooks => Bool]

=item [UseOpsworksSecurityGroups => Bool]

=item [VpcId => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorks::CreateStack>

Returns: a L<Paws::OpsWorks::CreateStackResult> instance

Creates a new stack. For more information, see Create a New Stack
(http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-edit.html).

B<Required Permissions>: To use this action, an IAM user must have an
attached policy that explicitly grants permissions. For more
information about user permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 CreateUserProfile

=over

=item IamUserArn => Str

=item [AllowSelfManagement => Bool]

=item [SshPublicKey => Str]

=item [SshUsername => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorks::CreateUserProfile>

Returns: a L<Paws::OpsWorks::CreateUserProfileResult> instance

Creates a new user profile.

B<Required Permissions>: To use this action, an IAM user must have an
attached policy that explicitly grants permissions. For more
information about user permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 DeleteApp

=over

=item AppId => Str


=back

Each argument is described in detail in: L<Paws::OpsWorks::DeleteApp>

Returns: nothing

Deletes a specified app.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 DeleteInstance

=over

=item InstanceId => Str

=item [DeleteElasticIp => Bool]

=item [DeleteVolumes => Bool]


=back

Each argument is described in detail in: L<Paws::OpsWorks::DeleteInstance>

Returns: nothing

Deletes a specified instance, which terminates the associated Amazon
EC2 instance. You must stop an instance before you can delete it.

For more information, see Deleting Instances
(http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-delete.html).

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 DeleteLayer

=over

=item LayerId => Str


=back

Each argument is described in detail in: L<Paws::OpsWorks::DeleteLayer>

Returns: nothing

Deletes a specified layer. You must first stop and then delete all
associated instances or unassign registered instances. For more
information, see How to Delete a Layer
(http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-delete.html).

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 DeleteStack

=over

=item StackId => Str


=back

Each argument is described in detail in: L<Paws::OpsWorks::DeleteStack>

Returns: nothing

Deletes a specified stack. You must first delete all instances, layers,
and apps or deregister registered instances. For more information, see
Shut Down a Stack
(http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-shutting.html).

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 DeleteUserProfile

=over

=item IamUserArn => Str


=back

Each argument is described in detail in: L<Paws::OpsWorks::DeleteUserProfile>

Returns: nothing

Deletes a user profile.

B<Required Permissions>: To use this action, an IAM user must have an
attached policy that explicitly grants permissions. For more
information about user permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 DeregisterEcsCluster

=over

=item EcsClusterArn => Str


=back

Each argument is described in detail in: L<Paws::OpsWorks::DeregisterEcsCluster>

Returns: nothing

Deregisters a specified Amazon ECS cluster from a stack. For more
information, see Resource Management
(http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html#workinglayers-ecscluster-delete).

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack or an attached policy that
explicitly grants permissions. For more information on user
permissions, see
http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 DeregisterElasticIp

=over

=item ElasticIp => Str


=back

Each argument is described in detail in: L<Paws::OpsWorks::DeregisterElasticIp>

Returns: nothing

Deregisters a specified Elastic IP address. The address can then be
registered by another stack. For more information, see Resource
Management
(http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 DeregisterInstance

=over

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::OpsWorks::DeregisterInstance>

Returns: nothing

Deregister a registered Amazon EC2 or on-premises instance. This action
removes the instance from the stack and returns it to your control.
This action cannot be used with instances that were created with AWS
OpsWorks Stacks.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 DeregisterRdsDbInstance

=over

=item RdsDbInstanceArn => Str


=back

Each argument is described in detail in: L<Paws::OpsWorks::DeregisterRdsDbInstance>

Returns: nothing

Deregisters an Amazon RDS instance.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 DeregisterVolume

=over

=item VolumeId => Str


=back

Each argument is described in detail in: L<Paws::OpsWorks::DeregisterVolume>

Returns: nothing

Deregisters an Amazon EBS volume. The volume can then be registered by
another stack. For more information, see Resource Management
(http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 DescribeAgentVersions

=over

=item [ConfigurationManager => L<Paws::OpsWorks::StackConfigurationManager>]

=item [StackId => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorks::DescribeAgentVersions>

Returns: a L<Paws::OpsWorks::DescribeAgentVersionsResult> instance

Describes the available AWS OpsWorks Stacks agent versions. You must
specify a stack ID or a configuration manager. C<DescribeAgentVersions>
returns a list of available agent versions for the specified stack or
configuration manager.


=head2 DescribeApps

=over

=item [AppIds => ArrayRef[Str|Undef]]

=item [StackId => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorks::DescribeApps>

Returns: a L<Paws::OpsWorks::DescribeAppsResult> instance

Requests a description of a specified set of apps.

This call accepts only one resource-identifying parameter.

B<Required Permissions>: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information about
user permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 DescribeCommands

=over

=item [CommandIds => ArrayRef[Str|Undef]]

=item [DeploymentId => Str]

=item [InstanceId => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorks::DescribeCommands>

Returns: a L<Paws::OpsWorks::DescribeCommandsResult> instance

Describes the results of specified commands.

This call accepts only one resource-identifying parameter.

B<Required Permissions>: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information about
user permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 DescribeDeployments

=over

=item [AppId => Str]

=item [DeploymentIds => ArrayRef[Str|Undef]]

=item [StackId => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorks::DescribeDeployments>

Returns: a L<Paws::OpsWorks::DescribeDeploymentsResult> instance

Requests a description of a specified set of deployments.

This call accepts only one resource-identifying parameter.

B<Required Permissions>: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information about
user permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 DescribeEcsClusters

=over

=item [EcsClusterArns => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StackId => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorks::DescribeEcsClusters>

Returns: a L<Paws::OpsWorks::DescribeEcsClustersResult> instance

Describes Amazon ECS clusters that are registered with a stack. If you
specify only a stack ID, you can use the C<MaxResults> and C<NextToken>
parameters to paginate the response. However, AWS OpsWorks Stacks
currently supports only one cluster per layer, so the result set has a
maximum of one element.

B<Required Permissions>: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack or an attached
policy that explicitly grants permission. For more information about
user permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

This call accepts only one resource-identifying parameter.


=head2 DescribeElasticIps

=over

=item [InstanceId => Str]

=item [Ips => ArrayRef[Str|Undef]]

=item [StackId => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorks::DescribeElasticIps>

Returns: a L<Paws::OpsWorks::DescribeElasticIpsResult> instance

Describes Elastic IP addresses
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html).

This call accepts only one resource-identifying parameter.

B<Required Permissions>: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information about
user permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 DescribeElasticLoadBalancers

=over

=item [LayerIds => ArrayRef[Str|Undef]]

=item [StackId => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorks::DescribeElasticLoadBalancers>

Returns: a L<Paws::OpsWorks::DescribeElasticLoadBalancersResult> instance

Describes a stack's Elastic Load Balancing instances.

This call accepts only one resource-identifying parameter.

B<Required Permissions>: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information about
user permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 DescribeInstances

=over

=item [InstanceIds => ArrayRef[Str|Undef]]

=item [LayerId => Str]

=item [StackId => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorks::DescribeInstances>

Returns: a L<Paws::OpsWorks::DescribeInstancesResult> instance

Requests a description of a set of instances.

This call accepts only one resource-identifying parameter.

B<Required Permissions>: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information about
user permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 DescribeLayers

=over

=item [LayerIds => ArrayRef[Str|Undef]]

=item [StackId => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorks::DescribeLayers>

Returns: a L<Paws::OpsWorks::DescribeLayersResult> instance

Requests a description of one or more layers in a specified stack.

This call accepts only one resource-identifying parameter.

B<Required Permissions>: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information about
user permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 DescribeLoadBasedAutoScaling

=over

=item LayerIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::OpsWorks::DescribeLoadBasedAutoScaling>

Returns: a L<Paws::OpsWorks::DescribeLoadBasedAutoScalingResult> instance

Describes load-based auto scaling configurations for specified layers.

You must specify at least one of the parameters.

B<Required Permissions>: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information about
user permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 DescribeMyUserProfile

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::OpsWorks::DescribeMyUserProfile>

Returns: a L<Paws::OpsWorks::DescribeMyUserProfileResult> instance

Describes a user's SSH information.

B<Required Permissions>: To use this action, an IAM user must have
self-management enabled or an attached policy that explicitly grants
permissions. For more information about user permissions, see Managing
User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 DescribeOperatingSystems

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::OpsWorks::DescribeOperatingSystems>

Returns: a L<Paws::OpsWorks::DescribeOperatingSystemsResponse> instance

Describes the operating systems that are supported by AWS OpsWorks
Stacks.


=head2 DescribePermissions

=over

=item [IamUserArn => Str]

=item [StackId => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorks::DescribePermissions>

Returns: a L<Paws::OpsWorks::DescribePermissionsResult> instance

Describes the permissions for a specified stack.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 DescribeRaidArrays

=over

=item [InstanceId => Str]

=item [RaidArrayIds => ArrayRef[Str|Undef]]

=item [StackId => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorks::DescribeRaidArrays>

Returns: a L<Paws::OpsWorks::DescribeRaidArraysResult> instance

Describe an instance's RAID arrays.

This call accepts only one resource-identifying parameter.

B<Required Permissions>: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information about
user permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 DescribeRdsDbInstances

=over

=item StackId => Str

=item [RdsDbInstanceArns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::OpsWorks::DescribeRdsDbInstances>

Returns: a L<Paws::OpsWorks::DescribeRdsDbInstancesResult> instance

Describes Amazon RDS instances.

B<Required Permissions>: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information about
user permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

This call accepts only one resource-identifying parameter.


=head2 DescribeServiceErrors

=over

=item [InstanceId => Str]

=item [ServiceErrorIds => ArrayRef[Str|Undef]]

=item [StackId => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorks::DescribeServiceErrors>

Returns: a L<Paws::OpsWorks::DescribeServiceErrorsResult> instance

Describes AWS OpsWorks Stacks service errors.

B<Required Permissions>: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information about
user permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

This call accepts only one resource-identifying parameter.


=head2 DescribeStackProvisioningParameters

=over

=item StackId => Str


=back

Each argument is described in detail in: L<Paws::OpsWorks::DescribeStackProvisioningParameters>

Returns: a L<Paws::OpsWorks::DescribeStackProvisioningParametersResult> instance

Requests a description of a stack's provisioning parameters.

B<Required Permissions>: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack or an attached
policy that explicitly grants permissions. For more information about
user permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 DescribeStacks

=over

=item [StackIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::OpsWorks::DescribeStacks>

Returns: a L<Paws::OpsWorks::DescribeStacksResult> instance

Requests a description of one or more stacks.

B<Required Permissions>: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information about
user permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 DescribeStackSummary

=over

=item StackId => Str


=back

Each argument is described in detail in: L<Paws::OpsWorks::DescribeStackSummary>

Returns: a L<Paws::OpsWorks::DescribeStackSummaryResult> instance

Describes the number of layers and apps in a specified stack, and the
number of instances in each state, such as C<running_setup> or
C<online>.

B<Required Permissions>: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information about
user permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 DescribeTimeBasedAutoScaling

=over

=item InstanceIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::OpsWorks::DescribeTimeBasedAutoScaling>

Returns: a L<Paws::OpsWorks::DescribeTimeBasedAutoScalingResult> instance

Describes time-based auto scaling configurations for specified
instances.

You must specify at least one of the parameters.

B<Required Permissions>: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information about
user permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 DescribeUserProfiles

=over

=item [IamUserArns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::OpsWorks::DescribeUserProfiles>

Returns: a L<Paws::OpsWorks::DescribeUserProfilesResult> instance

Describe specified users.

B<Required Permissions>: To use this action, an IAM user must have an
attached policy that explicitly grants permissions. For more
information about user permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 DescribeVolumes

=over

=item [InstanceId => Str]

=item [RaidArrayId => Str]

=item [StackId => Str]

=item [VolumeIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::OpsWorks::DescribeVolumes>

Returns: a L<Paws::OpsWorks::DescribeVolumesResult> instance

Describes an instance's Amazon EBS volumes.

This call accepts only one resource-identifying parameter.

B<Required Permissions>: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information about
user permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 DetachElasticLoadBalancer

=over

=item ElasticLoadBalancerName => Str

=item LayerId => Str


=back

Each argument is described in detail in: L<Paws::OpsWorks::DetachElasticLoadBalancer>

Returns: nothing

Detaches a specified Elastic Load Balancing instance from its layer.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 DisassociateElasticIp

=over

=item ElasticIp => Str


=back

Each argument is described in detail in: L<Paws::OpsWorks::DisassociateElasticIp>

Returns: nothing

Disassociates an Elastic IP address from its instance. The address
remains registered with the stack. For more information, see Resource
Management
(http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 GetHostnameSuggestion

=over

=item LayerId => Str


=back

Each argument is described in detail in: L<Paws::OpsWorks::GetHostnameSuggestion>

Returns: a L<Paws::OpsWorks::GetHostnameSuggestionResult> instance

Gets a generated host name for the specified layer, based on the
current host name theme.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 GrantAccess

=over

=item InstanceId => Str

=item [ValidForInMinutes => Int]


=back

Each argument is described in detail in: L<Paws::OpsWorks::GrantAccess>

Returns: a L<Paws::OpsWorks::GrantAccessResult> instance

This action can be used only with Windows stacks.

Grants RDP access to a Windows instance for a specified time period.


=head2 ListTags

=over

=item ResourceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorks::ListTags>

Returns: a L<Paws::OpsWorks::ListTagsResult> instance

Returns a list of tags that are applied to the specified stack or
layer.


=head2 RebootInstance

=over

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::OpsWorks::RebootInstance>

Returns: nothing

Reboots a specified instance. For more information, see Starting,
Stopping, and Rebooting Instances
(http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html).

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 RegisterEcsCluster

=over

=item EcsClusterArn => Str

=item StackId => Str


=back

Each argument is described in detail in: L<Paws::OpsWorks::RegisterEcsCluster>

Returns: a L<Paws::OpsWorks::RegisterEcsClusterResult> instance

Registers a specified Amazon ECS cluster with a stack. You can register
only one cluster with a stack. A cluster can be registered with only
one stack. For more information, see Resource Management
(http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html).

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 RegisterElasticIp

=over

=item ElasticIp => Str

=item StackId => Str


=back

Each argument is described in detail in: L<Paws::OpsWorks::RegisterElasticIp>

Returns: a L<Paws::OpsWorks::RegisterElasticIpResult> instance

Registers an Elastic IP address with a specified stack. An address can
be registered with only one stack at a time. If the address is already
registered, you must first deregister it by calling
DeregisterElasticIp. For more information, see Resource Management
(http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 RegisterInstance

=over

=item StackId => Str

=item [Hostname => Str]

=item [InstanceIdentity => L<Paws::OpsWorks::InstanceIdentity>]

=item [PrivateIp => Str]

=item [PublicIp => Str]

=item [RsaPublicKey => Str]

=item [RsaPublicKeyFingerprint => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorks::RegisterInstance>

Returns: a L<Paws::OpsWorks::RegisterInstanceResult> instance

Registers instances that were created outside of AWS OpsWorks Stacks
with a specified stack.

We do not recommend using this action to register instances. The
complete registration operation includes two tasks: installing the AWS
OpsWorks Stacks agent on the instance, and registering the instance
with the stack. C<RegisterInstance> handles only the second step. You
should instead use the AWS CLI C<register> command, which performs the
entire registration operation. For more information, see Registering an
Instance with an AWS OpsWorks Stacks Stack
(http://docs.aws.amazon.com/opsworks/latest/userguide/registered-instances-register.html).

Registered instances have the same requirements as instances that are
created by using the CreateInstance API. For example, registered
instances must be running a supported Linux-based operating system, and
they must have a supported instance type. For more information about
requirements for instances that you want to register, see Preparing the
Instance
(http://docs.aws.amazon.com/opsworks/latest/userguide/registered-instances-register-registering-preparer.html).

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 RegisterRdsDbInstance

=over

=item DbPassword => Str

=item DbUser => Str

=item RdsDbInstanceArn => Str

=item StackId => Str


=back

Each argument is described in detail in: L<Paws::OpsWorks::RegisterRdsDbInstance>

Returns: nothing

Registers an Amazon RDS instance with a stack.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 RegisterVolume

=over

=item StackId => Str

=item [Ec2VolumeId => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorks::RegisterVolume>

Returns: a L<Paws::OpsWorks::RegisterVolumeResult> instance

Registers an Amazon EBS volume with a specified stack. A volume can be
registered with only one stack at a time. If the volume is already
registered, you must first deregister it by calling DeregisterVolume.
For more information, see Resource Management
(http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 SetLoadBasedAutoScaling

=over

=item LayerId => Str

=item [DownScaling => L<Paws::OpsWorks::AutoScalingThresholds>]

=item [Enable => Bool]

=item [UpScaling => L<Paws::OpsWorks::AutoScalingThresholds>]


=back

Each argument is described in detail in: L<Paws::OpsWorks::SetLoadBasedAutoScaling>

Returns: nothing

Specify the load-based auto scaling configuration for a specified
layer. For more information, see Managing Load with Time-based and
Load-based Instances
(http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html).

To use load-based auto scaling, you must create a set of load-based
auto scaling instances. Load-based auto scaling operates only on the
instances from that set, so you must ensure that you have created
enough instances to handle the maximum anticipated load.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 SetPermission

=over

=item IamUserArn => Str

=item StackId => Str

=item [AllowSsh => Bool]

=item [AllowSudo => Bool]

=item [Level => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorks::SetPermission>

Returns: nothing

Specifies a user's permissions. For more information, see Security and
Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/workingsecurity.html).

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 SetTimeBasedAutoScaling

=over

=item InstanceId => Str

=item [AutoScalingSchedule => L<Paws::OpsWorks::WeeklyAutoScalingSchedule>]


=back

Each argument is described in detail in: L<Paws::OpsWorks::SetTimeBasedAutoScaling>

Returns: nothing

Specify the time-based auto scaling configuration for a specified
instance. For more information, see Managing Load with Time-based and
Load-based Instances
(http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html).

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 StartInstance

=over

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::OpsWorks::StartInstance>

Returns: nothing

Starts a specified instance. For more information, see Starting,
Stopping, and Rebooting Instances
(http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html).

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 StartStack

=over

=item StackId => Str


=back

Each argument is described in detail in: L<Paws::OpsWorks::StartStack>

Returns: nothing

Starts a stack's instances.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 StopInstance

=over

=item InstanceId => Str

=item [Force => Bool]


=back

Each argument is described in detail in: L<Paws::OpsWorks::StopInstance>

Returns: nothing

Stops a specified instance. When you stop a standard instance, the data
disappears and must be reinstalled when you restart the instance. You
can stop an Amazon EBS-backed instance without losing data. For more
information, see Starting, Stopping, and Rebooting Instances
(http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html).

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 StopStack

=over

=item StackId => Str


=back

Each argument is described in detail in: L<Paws::OpsWorks::StopStack>

Returns: nothing

Stops a specified stack.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::OpsWorks::Tags>


=back

Each argument is described in detail in: L<Paws::OpsWorks::TagResource>

Returns: nothing

Apply cost-allocation tags to a specified stack or layer in AWS
OpsWorks Stacks. For more information about how tagging works, see Tags
(http://docs.aws.amazon.com/opsworks/latest/userguide/tagging.html) in
the AWS OpsWorks User Guide.


=head2 UnassignInstance

=over

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::OpsWorks::UnassignInstance>

Returns: nothing

Unassigns a registered instance from all layers that are using the
instance. The instance remains in the stack as an unassigned instance,
and can be assigned to another layer as needed. You cannot use this
action with instances that were created with AWS OpsWorks Stacks.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack or an attached policy that
explicitly grants permissions. For more information about user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 UnassignVolume

=over

=item VolumeId => Str


=back

Each argument is described in detail in: L<Paws::OpsWorks::UnassignVolume>

Returns: nothing

Unassigns an assigned Amazon EBS volume. The volume remains registered
with the stack. For more information, see Resource Management
(http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::OpsWorks::UntagResource>

Returns: nothing

Removes tags from a specified stack or layer.


=head2 UpdateApp

=over

=item AppId => Str

=item [AppSource => L<Paws::OpsWorks::Source>]

=item [Attributes => L<Paws::OpsWorks::AppAttributes>]

=item [DataSources => ArrayRef[L<Paws::OpsWorks::DataSource>]]

=item [Description => Str]

=item [Domains => ArrayRef[Str|Undef]]

=item [EnableSsl => Bool]

=item [Environment => ArrayRef[L<Paws::OpsWorks::EnvironmentVariable>]]

=item [Name => Str]

=item [SslConfiguration => L<Paws::OpsWorks::SslConfiguration>]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorks::UpdateApp>

Returns: nothing

Updates a specified app.

B<Required Permissions>: To use this action, an IAM user must have a
Deploy or Manage permissions level for the stack, or an attached policy
that explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 UpdateElasticIp

=over

=item ElasticIp => Str

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorks::UpdateElasticIp>

Returns: nothing

Updates a registered Elastic IP address's name. For more information,
see Resource Management
(http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 UpdateInstance

=over

=item InstanceId => Str

=item [AgentVersion => Str]

=item [AmiId => Str]

=item [Architecture => Str]

=item [AutoScalingType => Str]

=item [EbsOptimized => Bool]

=item [Hostname => Str]

=item [InstallUpdatesOnBoot => Bool]

=item [InstanceType => Str]

=item [LayerIds => ArrayRef[Str|Undef]]

=item [Os => Str]

=item [SshKeyName => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorks::UpdateInstance>

Returns: nothing

Updates a specified instance.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 UpdateLayer

=over

=item LayerId => Str

=item [Attributes => L<Paws::OpsWorks::LayerAttributes>]

=item [AutoAssignElasticIps => Bool]

=item [AutoAssignPublicIps => Bool]

=item [CloudWatchLogsConfiguration => L<Paws::OpsWorks::CloudWatchLogsConfiguration>]

=item [CustomInstanceProfileArn => Str]

=item [CustomJson => Str]

=item [CustomRecipes => L<Paws::OpsWorks::Recipes>]

=item [CustomSecurityGroupIds => ArrayRef[Str|Undef]]

=item [EnableAutoHealing => Bool]

=item [InstallUpdatesOnBoot => Bool]

=item [LifecycleEventConfiguration => L<Paws::OpsWorks::LifecycleEventConfiguration>]

=item [Name => Str]

=item [Packages => ArrayRef[Str|Undef]]

=item [Shortname => Str]

=item [UseEbsOptimizedInstances => Bool]

=item [VolumeConfigurations => ArrayRef[L<Paws::OpsWorks::VolumeConfiguration>]]


=back

Each argument is described in detail in: L<Paws::OpsWorks::UpdateLayer>

Returns: nothing

Updates a specified layer.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 UpdateMyUserProfile

=over

=item [SshPublicKey => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorks::UpdateMyUserProfile>

Returns: nothing

Updates a user's SSH public key.

B<Required Permissions>: To use this action, an IAM user must have
self-management enabled or an attached policy that explicitly grants
permissions. For more information about user permissions, see Managing
User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 UpdateRdsDbInstance

=over

=item RdsDbInstanceArn => Str

=item [DbPassword => Str]

=item [DbUser => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorks::UpdateRdsDbInstance>

Returns: nothing

Updates an Amazon RDS instance.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 UpdateStack

=over

=item StackId => Str

=item [AgentVersion => Str]

=item [Attributes => L<Paws::OpsWorks::StackAttributes>]

=item [ChefConfiguration => L<Paws::OpsWorks::ChefConfiguration>]

=item [ConfigurationManager => L<Paws::OpsWorks::StackConfigurationManager>]

=item [CustomCookbooksSource => L<Paws::OpsWorks::Source>]

=item [CustomJson => Str]

=item [DefaultAvailabilityZone => Str]

=item [DefaultInstanceProfileArn => Str]

=item [DefaultOs => Str]

=item [DefaultRootDeviceType => Str]

=item [DefaultSshKeyName => Str]

=item [DefaultSubnetId => Str]

=item [HostnameTheme => Str]

=item [Name => Str]

=item [ServiceRoleArn => Str]

=item [UseCustomCookbooks => Bool]

=item [UseOpsworksSecurityGroups => Bool]


=back

Each argument is described in detail in: L<Paws::OpsWorks::UpdateStack>

Returns: nothing

Updates a specified stack.

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 UpdateUserProfile

=over

=item IamUserArn => Str

=item [AllowSelfManagement => Bool]

=item [SshPublicKey => Str]

=item [SshUsername => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorks::UpdateUserProfile>

Returns: nothing

Updates a specified user profile.

B<Required Permissions>: To use this action, an IAM user must have an
attached policy that explicitly grants permissions. For more
information about user permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).


=head2 UpdateVolume

=over

=item VolumeId => Str

=item [MountPoint => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorks::UpdateVolume>

Returns: nothing

Updates an Amazon EBS volume's name or mount point. For more
information, see Resource Management
(http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

B<Required Permissions>: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user
permissions, see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllEcsClusters(sub { },[EcsClusterArns => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, StackId => Str])

=head2 DescribeAllEcsClusters([EcsClusterArns => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, StackId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EcsClusters, passing the object as the first parameter, and the string 'EcsClusters' as the second parameter 

If not, it will return a a L<Paws::OpsWorks::DescribeEcsClustersResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

