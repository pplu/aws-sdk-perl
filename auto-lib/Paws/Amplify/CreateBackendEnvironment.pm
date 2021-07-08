
package Paws::Amplify::CreateBackendEnvironment;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has DeploymentArtifacts => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentArtifacts');
  has EnvironmentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentName', required => 1);
  has StackName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stackName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBackendEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/apps/{appId}/backendenvironments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Amplify::CreateBackendEnvironmentResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::CreateBackendEnvironment - Arguments for method CreateBackendEnvironment on L<Paws::Amplify>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBackendEnvironment on the
L<AWS Amplify|Paws::Amplify> service. Use the attributes of this class
as arguments to method CreateBackendEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBackendEnvironment.

=head1 SYNOPSIS

    my $amplify = Paws->service('Amplify');
    my $CreateBackendEnvironmentResult = $amplify->CreateBackendEnvironment(
      AppId               => 'MyAppId',
      EnvironmentName     => 'MyEnvironmentName',
      DeploymentArtifacts => 'MyDeploymentArtifacts',    # OPTIONAL
      StackName           => 'MyStackName',              # OPTIONAL
    );

    # Results:
    my $BackendEnvironment =
      $CreateBackendEnvironmentResult->BackendEnvironment;

    # Returns a L<Paws::Amplify::CreateBackendEnvironmentResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplify/CreateBackendEnvironment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The unique ID for an Amplify app.



=head2 DeploymentArtifacts => Str

The name of deployment artifacts.



=head2 B<REQUIRED> EnvironmentName => Str

The name for the backend environment.



=head2 StackName => Str

The AWS CloudFormation stack name of a backend environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBackendEnvironment in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

