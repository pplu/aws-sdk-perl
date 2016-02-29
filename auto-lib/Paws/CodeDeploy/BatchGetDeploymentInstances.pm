
package Paws::CodeDeploy::BatchGetDeploymentInstances;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentId' , required => 1);
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'instanceIds' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetDeploymentInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::BatchGetDeploymentInstancesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::BatchGetDeploymentInstances - Arguments for method BatchGetDeploymentInstances on Paws::CodeDeploy

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetDeploymentInstances on the 
AWS CodeDeploy service. Use the attributes of this class
as arguments to method BatchGetDeploymentInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetDeploymentInstances.

As an example:

  $service_obj->BatchGetDeploymentInstances(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeploymentId => Str

The unique ID of a deployment.



=head2 B<REQUIRED> InstanceIds => ArrayRef[Str]

The unique IDs of instances in the deployment's deployment group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetDeploymentInstances in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

