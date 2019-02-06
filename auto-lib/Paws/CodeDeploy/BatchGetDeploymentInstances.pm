
package Paws::CodeDeploy::BatchGetDeploymentInstances;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentId' , required => 1);
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'instanceIds' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetDeploymentInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::BatchGetDeploymentInstancesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::BatchGetDeploymentInstances - Arguments for method BatchGetDeploymentInstances on L<Paws::CodeDeploy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetDeploymentInstances on the
L<AWS CodeDeploy|Paws::CodeDeploy> service. Use the attributes of this class
as arguments to method BatchGetDeploymentInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetDeploymentInstances.

=head1 SYNOPSIS

    my $codedeploy = Paws->service('CodeDeploy');
    my $BatchGetDeploymentInstancesOutput =
      $codedeploy->BatchGetDeploymentInstances(
      DeploymentId => 'MyDeploymentId',
      InstanceIds  => [ 'MyInstanceId', ... ],

      );

    # Results:
    my $ErrorMessage     = $BatchGetDeploymentInstancesOutput->ErrorMessage;
    my $InstancesSummary = $BatchGetDeploymentInstancesOutput->InstancesSummary;

    # Returns a L<Paws::CodeDeploy::BatchGetDeploymentInstancesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codedeploy/BatchGetDeploymentInstances>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeploymentId => Str

The unique ID of a deployment.



=head2 B<REQUIRED> InstanceIds => ArrayRef[Str|Undef]

The unique IDs of instances used in the deployment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetDeploymentInstances in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

