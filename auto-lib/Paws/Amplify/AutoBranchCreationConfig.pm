package Paws::Amplify::AutoBranchCreationConfig;
  use Moose;
  has BasicAuthCredentials => (is => 'ro', isa => 'Str', request_name => 'basicAuthCredentials', traits => ['NameInRequest']);
  has BuildSpec => (is => 'ro', isa => 'Str', request_name => 'buildSpec', traits => ['NameInRequest']);
  has EnableAutoBuild => (is => 'ro', isa => 'Bool', request_name => 'enableAutoBuild', traits => ['NameInRequest']);
  has EnableBasicAuth => (is => 'ro', isa => 'Bool', request_name => 'enableBasicAuth', traits => ['NameInRequest']);
  has EnablePullRequestPreview => (is => 'ro', isa => 'Bool', request_name => 'enablePullRequestPreview', traits => ['NameInRequest']);
  has EnvironmentVariables => (is => 'ro', isa => 'Paws::Amplify::EnvironmentVariables', request_name => 'environmentVariables', traits => ['NameInRequest']);
  has Framework => (is => 'ro', isa => 'Str', request_name => 'framework', traits => ['NameInRequest']);
  has PullRequestEnvironmentName => (is => 'ro', isa => 'Str', request_name => 'pullRequestEnvironmentName', traits => ['NameInRequest']);
  has Stage => (is => 'ro', isa => 'Str', request_name => 'stage', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::AutoBranchCreationConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Amplify::AutoBranchCreationConfig object:

  $service_obj->Method(Att1 => { BasicAuthCredentials => $value, ..., Stage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Amplify::AutoBranchCreationConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->BasicAuthCredentials

=head1 DESCRIPTION

Structure with auto branch creation config.

=head1 ATTRIBUTES


=head2 BasicAuthCredentials => Str

  Basic Authorization credentials for the auto created branch.


=head2 BuildSpec => Str

  BuildSpec for the auto created branch.


=head2 EnableAutoBuild => Bool

  Enables auto building for the auto created branch.


=head2 EnableBasicAuth => Bool

  Enables Basic Auth for the auto created branch.


=head2 EnablePullRequestPreview => Bool

  Enables Pull Request Preview for auto created branch.


=head2 EnvironmentVariables => L<Paws::Amplify::EnvironmentVariables>

  Environment Variables for the auto created branch.


=head2 Framework => Str

  Framework for the auto created branch.


=head2 PullRequestEnvironmentName => Str

  The Amplify Environment name for the pull request.


=head2 Stage => Str

  Stage for the auto created branch.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

