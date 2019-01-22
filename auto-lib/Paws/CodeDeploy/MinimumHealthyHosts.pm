package Paws::CodeDeploy::MinimumHealthyHosts;
  use Moose;
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
  has Value => (is => 'ro', isa => 'Int', request_name => 'value', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::MinimumHealthyHosts

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::MinimumHealthyHosts object:

  $service_obj->Method(Att1 => { Type => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::MinimumHealthyHosts object:

  $result = $service_obj->Method(...);
  $result->Att1->Type

=head1 DESCRIPTION

Information about minimum healthy instance.

=head1 ATTRIBUTES


=head2 Type => Str

  The minimum healthy instance type:

=over

=item *

HOST_COUNT: The minimum number of healthy instance as an absolute
value.

=item *

FLEET_PERCENT: The minimum number of healthy instance as a percentage
of the total number of instance in the deployment.

=back

In an example of nine instance, if a HOST_COUNT of six is specified,
deploy to up to three instances at a time. The deployment is successful
if six or more instances are deployed to successfully. Otherwise, the
deployment fails. If a FLEET_PERCENT of 40 is specified, deploy to up
to five instance at a time. The deployment is successful if four or
more instance are deployed to successfully. Otherwise, the deployment
fails.

In a call to the get deployment configuration operation,
CodeDeployDefault.OneAtATime returns a minimum healthy instance type of
MOST_CONCURRENCY and a value of 1. This means a deployment to only one
instance at a time. (You cannot set the type to MOST_CONCURRENCY, only
to HOST_COUNT or FLEET_PERCENT.) In addition, with
CodeDeployDefault.OneAtATime, AWS CodeDeploy attempts to ensure that
all instances but one are kept in a healthy state during the
deployment. Although this allows one instance at a time to be taken
offline for a new deployment, it also means that if the deployment to
the last instance fails, the overall deployment is still successful.

For more information, see AWS CodeDeploy Instance Health
(http://docs.aws.amazon.com/codedeploy/latest/userguide/instances-health.html)
in the I<AWS CodeDeploy User Guide>.


=head2 Value => Int

  The minimum healthy instance value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

