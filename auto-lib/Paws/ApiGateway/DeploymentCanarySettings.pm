package Paws::ApiGateway::DeploymentCanarySettings;
  use Moose;
  has PercentTraffic => (is => 'ro', isa => 'Num', request_name => 'percentTraffic', traits => ['NameInRequest']);
  has StageVariableOverrides => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', request_name => 'stageVariableOverrides', traits => ['NameInRequest']);
  has UseStageCache => (is => 'ro', isa => 'Bool', request_name => 'useStageCache', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::DeploymentCanarySettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGateway::DeploymentCanarySettings object:

  $service_obj->Method(Att1 => { PercentTraffic => $value, ..., UseStageCache => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGateway::DeploymentCanarySettings object:

  $result = $service_obj->Method(...);
  $result->Att1->PercentTraffic

=head1 DESCRIPTION

The input configuration for a canary deployment.

=head1 ATTRIBUTES


=head2 PercentTraffic => Num

  The percentage (0.0-100.0) of traffic routed to the canary deployment.


=head2 StageVariableOverrides => L<Paws::ApiGateway::MapOfStringToString>

  A stage variable overrides used for the canary release deployment. They
can override existing stage variables or add new stage variables for
the canary release deployment. These stage variables are represented as
a string-to-string map between stage variable names and their values.


=head2 UseStageCache => Bool

  A Boolean flag to indicate whether the canary release deployment uses
the stage cache or not.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

