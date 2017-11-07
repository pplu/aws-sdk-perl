package Paws::ElasticBeanstalk::Deployment;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Int');
  has DeploymentTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::Deployment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::Deployment object:

  $service_obj->Method(Att1 => { DeploymentId => $value, ..., VersionLabel => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::Deployment object:

  $result = $service_obj->Method(...);
  $result->Att1->DeploymentId

=head1 DESCRIPTION

Information about an application version deployment.

=head1 ATTRIBUTES


=head2 DeploymentId => Int

  The ID of the deployment. This number increases by one each time that
you deploy source code or change instance configuration settings.


=head2 DeploymentTime => Str

  For in-progress deployments, the time that the deployment started.

For completed deployments, the time that the deployment ended.


=head2 Status => Str

  The status of the deployment:

=over

=item *

C<In Progress> : The deployment is in progress.

=item *

C<Deployed> : The deployment succeeded.

=item *

C<Failed> : The deployment failed.

=back



=head2 VersionLabel => Str

  The version label of the application version in the deployment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

