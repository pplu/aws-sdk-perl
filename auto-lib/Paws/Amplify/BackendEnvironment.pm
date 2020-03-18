package Paws::Amplify::BackendEnvironment;
  use Moose;
  has BackendEnvironmentArn => (is => 'ro', isa => 'Str', request_name => 'backendEnvironmentArn', traits => ['NameInRequest'], required => 1);
  has CreateTime => (is => 'ro', isa => 'Str', request_name => 'createTime', traits => ['NameInRequest'], required => 1);
  has DeploymentArtifacts => (is => 'ro', isa => 'Str', request_name => 'deploymentArtifacts', traits => ['NameInRequest']);
  has EnvironmentName => (is => 'ro', isa => 'Str', request_name => 'environmentName', traits => ['NameInRequest'], required => 1);
  has StackName => (is => 'ro', isa => 'Str', request_name => 'stackName', traits => ['NameInRequest']);
  has UpdateTime => (is => 'ro', isa => 'Str', request_name => 'updateTime', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::BackendEnvironment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Amplify::BackendEnvironment object:

  $service_obj->Method(Att1 => { BackendEnvironmentArn => $value, ..., UpdateTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Amplify::BackendEnvironment object:

  $result = $service_obj->Method(...);
  $result->Att1->BackendEnvironmentArn

=head1 DESCRIPTION

Backend environment for an Amplify App.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackendEnvironmentArn => Str

  Arn for a backend environment, part of an Amplify App.


=head2 B<REQUIRED> CreateTime => Str

  Creation date and time for a backend environment, part of an Amplify
App.


=head2 DeploymentArtifacts => Str

  Name of deployment artifacts.


=head2 B<REQUIRED> EnvironmentName => Str

  Name for a backend environment, part of an Amplify App.


=head2 StackName => Str

  CloudFormation stack name of backend environment.


=head2 B<REQUIRED> UpdateTime => Str

  Last updated date and time for a backend environment, part of an
Amplify App.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

