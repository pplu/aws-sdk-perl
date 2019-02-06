
package Paws::CodeDeploy::ListDeployments;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationName' );
  has CreateTimeRange => (is => 'ro', isa => 'Paws::CodeDeploy::TimeRange', traits => ['NameInRequest'], request_name => 'createTimeRange' );
  has DeploymentGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentGroupName' );
  has IncludeOnlyStatuses => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'includeOnlyStatuses' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDeployments');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::ListDeploymentsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ListDeployments - Arguments for method ListDeployments on L<Paws::CodeDeploy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDeployments on the
L<AWS CodeDeploy|Paws::CodeDeploy> service. Use the attributes of this class
as arguments to method ListDeployments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDeployments.

=head1 SYNOPSIS

    my $codedeploy = Paws->service('CodeDeploy');
    my $ListDeploymentsOutput = $codedeploy->ListDeployments(
      ApplicationName => 'MyApplicationName',    # OPTIONAL
      CreateTimeRange => {
        End   => '1970-01-01T01:00:00',          # OPTIONAL
        Start => '1970-01-01T01:00:00',          # OPTIONAL
      },    # OPTIONAL
      DeploymentGroupName => 'MyDeploymentGroupName',    # OPTIONAL
      IncludeOnlyStatuses => [
        'Created',
        ... # values: Created, Queued, InProgress, Succeeded, Failed, Stopped, Ready
      ],    # OPTIONAL
      NextToken => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Deployments = $ListDeploymentsOutput->Deployments;
    my $NextToken   = $ListDeploymentsOutput->NextToken;

    # Returns a L<Paws::CodeDeploy::ListDeploymentsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codedeploy/ListDeployments>

=head1 ATTRIBUTES


=head2 ApplicationName => Str

The name of an AWS CodeDeploy application associated with the IAM user
or AWS account.



=head2 CreateTimeRange => L<Paws::CodeDeploy::TimeRange>

A time range (start and end) for returning a subset of the list of
deployments.



=head2 DeploymentGroupName => Str

The name of a deployment group for the specified application.



=head2 IncludeOnlyStatuses => ArrayRef[Str|Undef]

A subset of deployments to list by status:

=over

=item *

Created: Include created deployments in the resulting list.

=item *

Queued: Include queued deployments in the resulting list.

=item *

In Progress: Include in-progress deployments in the resulting list.

=item *

Succeeded: Include successful deployments in the resulting list.

=item *

Failed: Include failed deployments in the resulting list.

=item *

Stopped: Include stopped deployments in the resulting list.

=back




=head2 NextToken => Str

An identifier returned from the previous list deployments call. It can
be used to return the next set of deployments in the list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDeployments in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

