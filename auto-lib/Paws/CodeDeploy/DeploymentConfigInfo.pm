package Paws::CodeDeploy::DeploymentConfigInfo;
  use Moose;
  has ComputePlatform => (is => 'ro', isa => 'Str', request_name => 'computePlatform', traits => ['NameInRequest']);
  has CreateTime => (is => 'ro', isa => 'Str', request_name => 'createTime', traits => ['NameInRequest']);
  has DeploymentConfigId => (is => 'ro', isa => 'Str', request_name => 'deploymentConfigId', traits => ['NameInRequest']);
  has DeploymentConfigName => (is => 'ro', isa => 'Str', request_name => 'deploymentConfigName', traits => ['NameInRequest']);
  has MinimumHealthyHosts => (is => 'ro', isa => 'Paws::CodeDeploy::MinimumHealthyHosts', request_name => 'minimumHealthyHosts', traits => ['NameInRequest']);
  has TrafficRoutingConfig => (is => 'ro', isa => 'Paws::CodeDeploy::TrafficRoutingConfig', request_name => 'trafficRoutingConfig', traits => ['NameInRequest']);
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

  $service_obj->Method(Att1 => { ComputePlatform => $value, ..., TrafficRoutingConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::DeploymentConfigInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->ComputePlatform

=head1 DESCRIPTION

Information about a deployment configuration.

=head1 ATTRIBUTES


=head2 ComputePlatform => Str

  The destination platform type for the deployment (C<Lambda> or
C<Server>).


=head2 CreateTime => Str

  The time at which the deployment configuration was created.


=head2 DeploymentConfigId => Str

  The deployment configuration ID.


=head2 DeploymentConfigName => Str

  The deployment configuration name.


=head2 MinimumHealthyHosts => L<Paws::CodeDeploy::MinimumHealthyHosts>

  Information about the number or percentage of minimum healthy instance.


=head2 TrafficRoutingConfig => L<Paws::CodeDeploy::TrafficRoutingConfig>

  The configuration that specifies how the deployment traffic is routed.
Only deployments with a Lambda compute platform can specify this.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

