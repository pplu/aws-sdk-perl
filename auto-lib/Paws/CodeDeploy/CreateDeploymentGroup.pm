
package Paws::CodeDeploy::CreateDeploymentGroup;
  use Moose;
  has AlarmConfiguration => (is => 'ro', isa => 'Paws::CodeDeploy::AlarmConfiguration', traits => ['NameInRequest'], request_name => 'alarmConfiguration' );
  has ApplicationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationName' , required => 1);
  has AutoRollbackConfiguration => (is => 'ro', isa => 'Paws::CodeDeploy::AutoRollbackConfiguration', traits => ['NameInRequest'], request_name => 'autoRollbackConfiguration' );
  has AutoScalingGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'autoScalingGroups' );
  has DeploymentConfigName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentConfigName' );
  has DeploymentGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentGroupName' , required => 1);
  has Ec2TagFilters => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::EC2TagFilter]', traits => ['NameInRequest'], request_name => 'ec2TagFilters' );
  has OnPremisesInstanceTagFilters => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::TagFilter]', traits => ['NameInRequest'], request_name => 'onPremisesInstanceTagFilters' );
  has ServiceRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceRoleArn' , required => 1);
  has TriggerConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::TriggerConfig]', traits => ['NameInRequest'], request_name => 'triggerConfigurations' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDeploymentGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::CreateDeploymentGroupOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::CreateDeploymentGroup - Arguments for method CreateDeploymentGroup on Paws::CodeDeploy

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDeploymentGroup on the 
AWS CodeDeploy service. Use the attributes of this class
as arguments to method CreateDeploymentGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDeploymentGroup.

As an example:

  $service_obj->CreateDeploymentGroup(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AlarmConfiguration => L<Paws::CodeDeploy::AlarmConfiguration>

Information to add about Amazon CloudWatch alarms when the deployment
group is created.



=head2 B<REQUIRED> ApplicationName => Str

The name of an AWS CodeDeploy application associated with the
applicable IAM user or AWS account.



=head2 AutoRollbackConfiguration => L<Paws::CodeDeploy::AutoRollbackConfiguration>

Configuration information for an automatic rollback that is added when
a deployment group is created.



=head2 AutoScalingGroups => ArrayRef[Str|Undef]

A list of associated Auto Scaling groups.



=head2 DeploymentConfigName => Str

If specified, the deployment configuration name can be either one of
the predefined configurations provided with AWS CodeDeploy or a custom
deployment configuration that you create by calling the create
deployment configuration operation.

CodeDeployDefault.OneAtATime is the default deployment configuration.
It is used if a configuration isn't specified for the deployment or the
deployment group.

For more information about the predefined deployment configurations in
AWS CodeDeploy, see see Working with Deployment Groups in AWS
CodeDeploy in the AWS CodeDeploy User Guide.



=head2 B<REQUIRED> DeploymentGroupName => Str

The name of a new deployment group for the specified application.



=head2 Ec2TagFilters => ArrayRef[L<Paws::CodeDeploy::EC2TagFilter>]

The Amazon EC2 tags on which to filter.



=head2 OnPremisesInstanceTagFilters => ArrayRef[L<Paws::CodeDeploy::TagFilter>]

The on-premises instance tags on which to filter.



=head2 B<REQUIRED> ServiceRoleArn => Str

A service role ARN that allows AWS CodeDeploy to act on the user's
behalf when interacting with AWS services.



=head2 TriggerConfigurations => ArrayRef[L<Paws::CodeDeploy::TriggerConfig>]

Information about triggers to create when the deployment group is
created. For examples, see Create a Trigger for an AWS CodeDeploy Event
in the AWS CodeDeploy User Guide.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDeploymentGroup in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

