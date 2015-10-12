package Paws::CodeDeploy::MinimumHealthyHosts;
  use Moose;
  has type => (is => 'ro', isa => 'Str');
  has value => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::MinimumHealthyHosts

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::MinimumHealthyHosts object:

  $service_obj->Method(Att1 => { type => $value, ..., value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::MinimumHealthyHosts object:

  $result = $service_obj->Method(...);
  $result->Att1->type

=head1 ATTRIBUTES

=head2 type => Str

  The minimum healthy instances type:

=over

=item * HOST_COUNT: The minimum number of healthy instances, as an
absolute value.

=item * FLEET_PERCENT: The minimum number of healthy instances, as a
percentage of the total number of instances in the deployment.

=back

For example, for 9 instances, if a HOST_COUNT of 6 is specified, deploy
to up to 3 instances at a time. The deployment succeeds if 6 or more
instances are successfully deployed to; otherwise, the deployment
fails. If a FLEET_PERCENT of 40 is specified, deploy to up to 5
instances at a time. The deployment succeeds if 4 or more instances are
successfully deployed to; otherwise, the deployment fails.

In a call to the get deployment configuration operation,
CodeDeployDefault.OneAtATime will return a minimum healthy instances
type of MOST_CONCURRENCY and a value of 1. This means a deployment to
only one instances at a time. (You cannot set the type to
MOST_CONCURRENCY, only to HOST_COUNT or FLEET_PERCENT.)

=head2 value => Int

  The minimum healthy instances value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

