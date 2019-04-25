
package Paws::CodeDeploy::GetDeploymentConfig;
  use Moose;
  has DeploymentConfigName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentConfigName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDeploymentConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::GetDeploymentConfigOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::GetDeploymentConfig - Arguments for method GetDeploymentConfig on L<Paws::CodeDeploy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDeploymentConfig on the
L<AWS CodeDeploy|Paws::CodeDeploy> service. Use the attributes of this class
as arguments to method GetDeploymentConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDeploymentConfig.

=head1 SYNOPSIS

    my $codedeploy = Paws->service('CodeDeploy');
    my $GetDeploymentConfigOutput = $codedeploy->GetDeploymentConfig(
      DeploymentConfigName => 'MyDeploymentConfigName',

    );

    # Results:
    my $DeploymentConfigInfo = $GetDeploymentConfigOutput->DeploymentConfigInfo;

    # Returns a L<Paws::CodeDeploy::GetDeploymentConfigOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codedeploy/GetDeploymentConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeploymentConfigName => Str

The name of a deployment configuration associated with the IAM user or
AWS account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDeploymentConfig in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

