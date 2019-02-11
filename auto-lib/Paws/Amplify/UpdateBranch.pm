
package Paws::Amplify::UpdateBranch;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has BasicAuthCredentials => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'basicAuthCredentials');
  has BranchName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'branchName', required => 1);
  has BuildSpec => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'buildSpec');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EnableAutoBuild => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableAutoBuild');
  has EnableBasicAuth => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableBasicAuth');
  has EnableNotification => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableNotification');
  has EnvironmentVariables => (is => 'ro', isa => 'Paws::Amplify::EnvironmentVariables', traits => ['NameInRequest'], request_name => 'environmentVariables');
  has Framework => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'framework');
  has Stage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stage');
  has Ttl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ttl');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBranch');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/apps/{appId}/branches/{branchName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Amplify::UpdateBranchResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::UpdateBranch - Arguments for method UpdateBranch on L<Paws::Amplify>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBranch on the
L<AWS Amplify|Paws::Amplify> service. Use the attributes of this class
as arguments to method UpdateBranch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBranch.

=head1 SYNOPSIS

    my $amplify = Paws->service('Amplify');
    my $UpdateBranchResult = $amplify->UpdateBranch(
      AppId                => 'MyAppId',
      BranchName           => 'MyBranchName',
      BasicAuthCredentials => 'MyBasicAuthCredentials',    # OPTIONAL
      BuildSpec            => 'MyBuildSpec',               # OPTIONAL
      Description          => 'MyDescription',             # OPTIONAL
      EnableAutoBuild      => 1,                           # OPTIONAL
      EnableBasicAuth      => 1,                           # OPTIONAL
      EnableNotification   => 1,                           # OPTIONAL
      EnvironmentVariables => {
        'MyEnvKey' => 'MyEnvValue',    # key: max: 255, value: max: 1000
      },    # OPTIONAL
      Framework => 'MyFramework',    # OPTIONAL
      Stage     => 'PRODUCTION',     # OPTIONAL
      Ttl       => 'MyTTL',          # OPTIONAL
    );

    # Results:
    my $Branch = $UpdateBranchResult->Branch;

    # Returns a L<Paws::Amplify::UpdateBranchResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplify/UpdateBranch>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

Unique Id for an Amplify App.



=head2 BasicAuthCredentials => Str

Basic Authorization credentials for the branch.



=head2 B<REQUIRED> BranchName => Str

Name for the branch.



=head2 BuildSpec => Str

BuildSpec for the branch.



=head2 Description => Str

Description for the branch.



=head2 EnableAutoBuild => Bool

Enables auto building for the branch.



=head2 EnableBasicAuth => Bool

Enables Basic Auth for the branch.



=head2 EnableNotification => Bool

Enables notifications for the branch.



=head2 EnvironmentVariables => L<Paws::Amplify::EnvironmentVariables>

Environment Variables for the branch.



=head2 Framework => Str

Framework for the branch.



=head2 Stage => Str

Stage for the branch.

Valid values are: C<"PRODUCTION">, C<"BETA">, C<"DEVELOPMENT">, C<"EXPERIMENTAL">

=head2 Ttl => Str

The content TTL for the website in seconds.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBranch in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

