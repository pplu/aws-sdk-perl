# Generated by default/object.tt
package Paws::SecurityHub::AwsApiGatewayCanarySettings;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Str');
  has PercentTraffic => (is => 'ro', isa => 'Num');
  has StageVariableOverrides => (is => 'ro', isa => 'Paws::SecurityHub::FieldMap');
  has UseStageCache => (is => 'ro', isa => 'Bool');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsApiGatewayCanarySettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsApiGatewayCanarySettings object:

  $service_obj->Method(Att1 => { DeploymentId => $value, ..., UseStageCache => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsApiGatewayCanarySettings object:

  $result = $service_obj->Method(...);
  $result->Att1->DeploymentId

=head1 DESCRIPTION

Contains information about settings for canary deployment in the stage.

=head1 ATTRIBUTES


=head2 DeploymentId => Str

The deployment identifier for the canary deployment.


=head2 PercentTraffic => Num

The percentage of traffic that is diverted to a canary deployment.


=head2 StageVariableOverrides => L<Paws::SecurityHub::FieldMap>

Stage variables that are overridden in the canary release deployment.
The variables include new stage variables that are introduced in the
canary.

Each variable is represented as a string-to-string map between the
stage variable name and the variable value.


=head2 UseStageCache => Bool

Indicates whether the canary deployment uses the stage cache.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

