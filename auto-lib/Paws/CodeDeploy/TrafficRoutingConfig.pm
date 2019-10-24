# Generated from default/object.tt
package Paws::CodeDeploy::TrafficRoutingConfig;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeDeploy::Types qw/CodeDeploy_TimeBasedLinear CodeDeploy_TimeBasedCanary/;
  has TimeBasedCanary => (is => 'ro', isa => CodeDeploy_TimeBasedCanary);
  has TimeBasedLinear => (is => 'ro', isa => CodeDeploy_TimeBasedLinear);
  has Type => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Type' => {
                           'type' => 'Str'
                         },
               'TimeBasedLinear' => {
                                      'class' => 'Paws::CodeDeploy::TimeBasedLinear',
                                      'type' => 'CodeDeploy_TimeBasedLinear'
                                    },
               'TimeBasedCanary' => {
                                      'class' => 'Paws::CodeDeploy::TimeBasedCanary',
                                      'type' => 'CodeDeploy_TimeBasedCanary'
                                    }
             },
  'NameInRequest' => {
                       'Type' => 'type',
                       'TimeBasedLinear' => 'timeBasedLinear',
                       'TimeBasedCanary' => 'timeBasedCanary'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::TrafficRoutingConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::TrafficRoutingConfig object:

  $service_obj->Method(Att1 => { TimeBasedCanary => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::TrafficRoutingConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->TimeBasedCanary

=head1 DESCRIPTION

The configuration that specifies how traffic is shifted from one
version of a Lambda function to another version during an AWS Lambda
deployment.

=head1 ATTRIBUTES


=head2 TimeBasedCanary => CodeDeploy_TimeBasedCanary

  A configuration that shifts traffic from one version of a Lambda
function to another in two increments. The original and target Lambda
function versions are specified in the deployment's AppSpec file.


=head2 TimeBasedLinear => CodeDeploy_TimeBasedLinear

  A configuration that shifts traffic from one version of a Lambda
function to another in equal increments, with an equal number of
minutes between each increment. The original and target Lambda function
versions are specified in the deployment's AppSpec file.


=head2 Type => Str

  The type of traffic shifting (C<TimeBasedCanary> or C<TimeBasedLinear>)
used by a deployment configuration .



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

