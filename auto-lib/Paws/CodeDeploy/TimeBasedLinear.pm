package Paws::CodeDeploy::TimeBasedLinear;
  use Moose;
  has LinearInterval => (is => 'ro', isa => 'Int', request_name => 'linearInterval', traits => ['NameInRequest']);
  has LinearPercentage => (is => 'ro', isa => 'Int', request_name => 'linearPercentage', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::TimeBasedLinear

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::TimeBasedLinear object:

  $service_obj->Method(Att1 => { LinearInterval => $value, ..., LinearPercentage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::TimeBasedLinear object:

  $result = $service_obj->Method(...);
  $result->Att1->LinearInterval

=head1 DESCRIPTION

A configuration that shifts traffic from one version of a Lambda
function to another in equal increments, with an equal number of
minutes between each increment. The original and target Lambda function
versions are specified in the deployment's AppSpec file.

=head1 ATTRIBUTES


=head2 LinearInterval => Int

  The number of minutes between each incremental traffic shift of a
C<TimeBasedLinear> deployment.


=head2 LinearPercentage => Int

  The percentage of traffic that is shifted at the start of each
increment of a C<TimeBasedLinear> deployment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

