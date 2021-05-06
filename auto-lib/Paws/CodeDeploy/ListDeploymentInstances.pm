
package Paws::CodeDeploy::ListDeploymentInstances;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentId' , required => 1);
  has InstanceStatusFilter => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'instanceStatusFilter' );
  has InstanceTypeFilter => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'instanceTypeFilter' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDeploymentInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::ListDeploymentInstancesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ListDeploymentInstances - Arguments for method ListDeploymentInstances on L<Paws::CodeDeploy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDeploymentInstances on the
L<AWS CodeDeploy|Paws::CodeDeploy> service. Use the attributes of this class
as arguments to method ListDeploymentInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDeploymentInstances.

=head1 SYNOPSIS

    my $codedeploy = Paws->service('CodeDeploy');
    my $ListDeploymentInstancesOutput = $codedeploy->ListDeploymentInstances(
      DeploymentId         => 'MyDeploymentId',
      InstanceStatusFilter => [
        'Pending',
        ... # values: Pending, InProgress, Succeeded, Failed, Skipped, Unknown, Ready
      ],    # OPTIONAL
      InstanceTypeFilter => [
        'Blue', ...    # values: Blue, Green
      ],               # OPTIONAL
      NextToken => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $InstancesList = $ListDeploymentInstancesOutput->InstancesList;
    my $NextToken     = $ListDeploymentInstancesOutput->NextToken;

    # Returns a L<Paws::CodeDeploy::ListDeploymentInstancesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codedeploy/ListDeploymentInstances>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeploymentId => Str

The unique ID of a deployment.



=head2 InstanceStatusFilter => ArrayRef[Str|Undef]

A subset of instances to list by status:

=over

=item *

Pending: Include those instances with pending deployments.

=item *

InProgress: Include those instances where deployments are still in
progress.

=item *

Succeeded: Include those instances with successful deployments.

=item *

Failed: Include those instances with failed deployments.

=item *

Skipped: Include those instances with skipped deployments.

=item *

Unknown: Include those instances with deployments in an unknown state.

=back




=head2 InstanceTypeFilter => ArrayRef[Str|Undef]

The set of instances in a blue/green deployment, either those in the
original environment ("BLUE") or those in the replacement environment
("GREEN"), for which you want to view instance information.



=head2 NextToken => Str

An identifier returned from the previous list deployment instances
call. It can be used to return the next set of deployment instances in
the list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDeploymentInstances in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

