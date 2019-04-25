
package Paws::CodeDeploy::ListDeploymentTargets;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentId' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has TargetFilters => (is => 'ro', isa => 'Paws::CodeDeploy::TargetFilters', traits => ['NameInRequest'], request_name => 'targetFilters' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDeploymentTargets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::ListDeploymentTargetsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ListDeploymentTargets - Arguments for method ListDeploymentTargets on L<Paws::CodeDeploy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDeploymentTargets on the
L<AWS CodeDeploy|Paws::CodeDeploy> service. Use the attributes of this class
as arguments to method ListDeploymentTargets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDeploymentTargets.

=head1 SYNOPSIS

    my $codedeploy = Paws->service('CodeDeploy');
    my $ListDeploymentTargetsOutput = $codedeploy->ListDeploymentTargets(
      DeploymentId  => 'MyDeploymentId',    # OPTIONAL
      NextToken     => 'MyNextToken',       # OPTIONAL
      TargetFilters => {
        'TargetStatus' => [ 'MyFilterValue', ... ]
        ,    # key: values: TargetStatus, ServerInstanceLabel
      },    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListDeploymentTargetsOutput->NextToken;
    my $TargetIds = $ListDeploymentTargetsOutput->TargetIds;

    # Returns a L<Paws::CodeDeploy::ListDeploymentTargetsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codedeploy/ListDeploymentTargets>

=head1 ATTRIBUTES


=head2 DeploymentId => Str

The unique ID of a deployment.



=head2 NextToken => Str

A token identifier returned from the previous C<ListDeploymentTargets>
call. It can be used to return the next set of deployment targets in
the list.



=head2 TargetFilters => L<Paws::CodeDeploy::TargetFilters>

A key used to filter the returned targets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDeploymentTargets in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

