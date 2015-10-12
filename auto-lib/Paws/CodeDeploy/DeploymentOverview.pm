package Paws::CodeDeploy::DeploymentOverview;
  use Moose;
  has Failed => (is => 'ro', isa => 'Int');
  has InProgress => (is => 'ro', isa => 'Int');
  has Pending => (is => 'ro', isa => 'Int');
  has Skipped => (is => 'ro', isa => 'Int');
  has Succeeded => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::DeploymentOverview

=head1 DESCRIPTION

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

=head1 ATTRIBUTES

=head2 Failed => Int

  

The number of instances that have failed in the deployment.










=head2 InProgress => Int

  

The number of instances that are in progress in the deployment.










=head2 Pending => Int

  

The number of instances that are pending in the deployment.










=head2 Skipped => Int

  

The number of instances that have been skipped in the deployment.










=head2 Succeeded => Int

  

The number of instances that have succeeded in the deployment.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

