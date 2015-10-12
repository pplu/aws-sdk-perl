package Paws::CodeDeploy::DeploymentGroupInfo;
  use Moose;
  has applicationName => (is => 'ro', isa => 'Str');
  has autoScalingGroups => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::AutoScalingGroup]');
  has deploymentConfigName => (is => 'ro', isa => 'Str');
  has deploymentGroupId => (is => 'ro', isa => 'Str');
  has deploymentGroupName => (is => 'ro', isa => 'Str');
  has ec2TagFilters => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::EC2TagFilter]');
  has onPremisesInstanceTagFilters => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::TagFilter]');
  has serviceRoleArn => (is => 'ro', isa => 'Str');
  has targetRevision => (is => 'ro', isa => 'Paws::CodeDeploy::RevisionLocation');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::DeploymentGroupInfo

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::DeploymentGroupInfo object:

  $service_obj->Method(Att1 => { applicationName => $value, ..., targetRevision => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::DeploymentGroupInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->applicationName

=head1 ATTRIBUTES

=head2 applicationName => Str

  The application name.

=head2 autoScalingGroups => ArrayRef[Paws::CodeDeploy::AutoScalingGroup]

  A list of associated Auto Scaling groups.

=head2 deploymentConfigName => Str

  The deployment configuration name.

=head2 deploymentGroupId => Str

  The deployment group ID.

=head2 deploymentGroupName => Str

  The deployment group name.

=head2 ec2TagFilters => ArrayRef[Paws::CodeDeploy::EC2TagFilter]

  The Amazon EC2 tags to filter on.

=head2 onPremisesInstanceTagFilters => ArrayRef[Paws::CodeDeploy::TagFilter]

  The on-premises instance tags to filter on.

=head2 serviceRoleArn => Str

  A service role ARN.

=head2 targetRevision => Paws::CodeDeploy::RevisionLocation

  Information about the deployment group's target revision, including the
revision's type and its location.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

