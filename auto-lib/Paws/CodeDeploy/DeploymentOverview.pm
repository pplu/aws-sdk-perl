package Paws::CodeDeploy::DeploymentOverview;
  use Moose;
  has Failed => (is => 'ro', isa => 'Int');
  has InProgress => (is => 'ro', isa => 'Int');
  has Pending => (is => 'ro', isa => 'Int');
  has Ready => (is => 'ro', isa => 'Int');
  has Skipped => (is => 'ro', isa => 'Int');
  has Succeeded => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::DeploymentOverview

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::DeploymentOverview object:

  $service_obj->Method(Att1 => { Failed => $value, ..., Succeeded => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::DeploymentOverview object:

  $result = $service_obj->Method(...);
  $result->Att1->Failed

=head1 DESCRIPTION

Information about the deployment status of the instances in the
deployment.

=head1 ATTRIBUTES


=head2 Failed => Int

  The number of instances in the deployment in a failed state.


=head2 InProgress => Int

  The number of instances in which the deployment is in progress.


=head2 Pending => Int

  The number of instances in the deployment in a pending state.


=head2 Ready => Int

  The number of instances in a replacement environment ready to receive
traffic in a blue/green deployment.


=head2 Skipped => Int

  The number of instances in the deployment in a skipped state.


=head2 Succeeded => Int

  The number of instances in the deployment to which revisions have been
successfully deployed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

