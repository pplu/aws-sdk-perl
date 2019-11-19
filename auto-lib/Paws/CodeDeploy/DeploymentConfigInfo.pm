# Generated from default/object.tt
package Paws::CodeDeploy::DeploymentConfigInfo;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeDeploy::Types qw/CodeDeploy_TrafficRoutingConfig CodeDeploy_MinimumHealthyHosts/;
  has ComputePlatform => (is => 'ro', isa => Str);
  has CreateTime => (is => 'ro', isa => Str);
  has DeploymentConfigId => (is => 'ro', isa => Str);
  has DeploymentConfigName => (is => 'ro', isa => Str);
  has MinimumHealthyHosts => (is => 'ro', isa => CodeDeploy_MinimumHealthyHosts);
  has TrafficRoutingConfig => (is => 'ro', isa => CodeDeploy_TrafficRoutingConfig);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MinimumHealthyHosts' => {
                                          'class' => 'Paws::CodeDeploy::MinimumHealthyHosts',
                                          'type' => 'CodeDeploy_MinimumHealthyHosts'
                                        },
               'TrafficRoutingConfig' => {
                                           'class' => 'Paws::CodeDeploy::TrafficRoutingConfig',
                                           'type' => 'CodeDeploy_TrafficRoutingConfig'
                                         },
               'CreateTime' => {
                                 'type' => 'Str'
                               },
               'ComputePlatform' => {
                                      'type' => 'Str'
                                    },
               'DeploymentConfigName' => {
                                           'type' => 'Str'
                                         },
               'DeploymentConfigId' => {
                                         'type' => 'Str'
                                       }
             },
  'NameInRequest' => {
                       'DeploymentConfigId' => 'deploymentConfigId',
                       'ComputePlatform' => 'computePlatform',
                       'DeploymentConfigName' => 'deploymentConfigName',
                       'TrafficRoutingConfig' => 'trafficRoutingConfig',
                       'MinimumHealthyHosts' => 'minimumHealthyHosts',
                       'CreateTime' => 'createTime'
                     }
}
;
    return $Params_map;
  }


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

  The destination platform type for the deployment (C<Lambda>, C<Server>,
or C<ECS>).


=head2 CreateTime => Str

  The time at which the deployment configuration was created.


=head2 DeploymentConfigId => Str

  The deployment configuration ID.


=head2 DeploymentConfigName => Str

  The deployment configuration name.


=head2 MinimumHealthyHosts => CodeDeploy_MinimumHealthyHosts

  Information about the number or percentage of minimum healthy instance.


=head2 TrafficRoutingConfig => CodeDeploy_TrafficRoutingConfig

  The configuration that specifies how the deployment traffic is routed.
Only deployments with a Lambda compute platform can specify this.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

