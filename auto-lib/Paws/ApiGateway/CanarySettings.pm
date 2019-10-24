# Generated from default/object.tt
package Paws::ApiGateway::CanarySettings;
  use Moo;
  use Types::Standard qw/Str Num Bool/;
  use Paws::ApiGateway::Types qw/ApiGateway_MapOfStringToString/;
  has DeploymentId => (is => 'ro', isa => Str);
  has PercentTraffic => (is => 'ro', isa => Num);
  has StageVariableOverrides => (is => 'ro', isa => ApiGateway_MapOfStringToString);
  has UseStageCache => (is => 'ro', isa => Bool);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PercentTraffic' => {
                                     'type' => 'Num'
                                   },
               'DeploymentId' => {
                                   'type' => 'Str'
                                 },
               'UseStageCache' => {
                                    'type' => 'Bool'
                                  },
               'StageVariableOverrides' => {
                                             'class' => 'Paws::ApiGateway::MapOfStringToString',
                                             'type' => 'ApiGateway_MapOfStringToString'
                                           }
             },
  'NameInRequest' => {
                       'PercentTraffic' => 'percentTraffic',
                       'DeploymentId' => 'deploymentId',
                       'UseStageCache' => 'useStageCache',
                       'StageVariableOverrides' => 'stageVariableOverrides'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::CanarySettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGateway::CanarySettings object:

  $service_obj->Method(Att1 => { DeploymentId => $value, ..., UseStageCache => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGateway::CanarySettings object:

  $result = $service_obj->Method(...);
  $result->Att1->DeploymentId

=head1 DESCRIPTION

Configuration settings of a canary deployment.

=head1 ATTRIBUTES


=head2 DeploymentId => Str

  The ID of the canary deployment.


=head2 PercentTraffic => Num

  The percent (0-100) of traffic diverted to a canary deployment.


=head2 StageVariableOverrides => ApiGateway_MapOfStringToString

  Stage variables overridden for a canary release deployment, including
new stage variables introduced in the canary. These stage variables are
represented as a string-to-string map between stage variable names and
their values.


=head2 UseStageCache => Bool

  A Boolean flag to indicate whether the canary deployment uses the stage
cache or not.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

