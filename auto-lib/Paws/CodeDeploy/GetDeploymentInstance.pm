
package Paws::CodeDeploy::GetDeploymentInstance;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentId' , required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDeploymentInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::GetDeploymentInstanceOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::GetDeploymentInstance - Arguments for method GetDeploymentInstance on L<Paws::CodeDeploy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDeploymentInstance on the
L<AWS CodeDeploy|Paws::CodeDeploy> service. Use the attributes of this class
as arguments to method GetDeploymentInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDeploymentInstance.

=head1 SYNOPSIS

    my $codedeploy = Paws->service('CodeDeploy');
    my $GetDeploymentInstanceOutput = $codedeploy->GetDeploymentInstance(
      DeploymentId => 'MyDeploymentId',
      InstanceId   => 'MyInstanceId',

    );

    # Results:
    my $InstanceSummary = $GetDeploymentInstanceOutput->InstanceSummary;

    # Returns a L<Paws::CodeDeploy::GetDeploymentInstanceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codedeploy/GetDeploymentInstance>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeploymentId => Str

The unique ID of a deployment.



=head2 B<REQUIRED> InstanceId => Str

The unique ID of an instance in the deployment group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDeploymentInstance in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

