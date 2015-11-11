package Paws::CodeDeploy::DeploymentConfigInfo;
  use Moose;
  has CreateTime => (is => 'ro', isa => 'Str', xmlname => 'createTime', request_name => 'createTime', traits => ['Unwrapped','NameInRequest']);
  has DeploymentConfigId => (is => 'ro', isa => 'Str', xmlname => 'deploymentConfigId', request_name => 'deploymentConfigId', traits => ['Unwrapped','NameInRequest']);
  has DeploymentConfigName => (is => 'ro', isa => 'Str', xmlname => 'deploymentConfigName', request_name => 'deploymentConfigName', traits => ['Unwrapped','NameInRequest']);
  has MinimumHealthyHosts => (is => 'ro', isa => 'Paws::CodeDeploy::MinimumHealthyHosts', xmlname => 'minimumHealthyHosts', request_name => 'minimumHealthyHosts', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::DeploymentConfigInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::DeploymentConfigInfo object:

  $service_obj->Method(Att1 => { CreateTime => $value, ..., MinimumHealthyHosts => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::DeploymentConfigInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->CreateTime

=head1 DESCRIPTION

Information about a deployment configuration.

=head1 ATTRIBUTES


=head2 CreateTime => Str

  The time that the deployment configuration was created.


=head2 DeploymentConfigId => Str

  The deployment configuration ID.


=head2 DeploymentConfigName => Str

  The deployment configuration name.


=head2 MinimumHealthyHosts => L<Paws::CodeDeploy::MinimumHealthyHosts>

  Information about the number or percentage of minimum healthy
instances.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

