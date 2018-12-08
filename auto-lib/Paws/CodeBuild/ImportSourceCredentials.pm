
package Paws::CodeBuild::ImportSourceCredentials;
  use Moose;
  has AuthType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authType' , required => 1);
  has ServerType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serverType' , required => 1);
  has Token => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'token' , required => 1);
  has Username => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'username' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportSourceCredentials');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::ImportSourceCredentialsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::ImportSourceCredentials - Arguments for method ImportSourceCredentials on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportSourceCredentials on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method ImportSourceCredentials.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportSourceCredentials.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $ImportSourceCredentialsOutput = $codebuild->ImportSourceCredentials(
      AuthType   => 'OAUTH',
      ServerType => 'GITHUB',
      Token      => 'MySensitiveNonEmptyString',
      Username   => 'MyNonEmptyString',            # OPTIONAL
    );

    # Results:
    my $Arn = $ImportSourceCredentialsOutput->Arn;

    # Returns a L<Paws::CodeBuild::ImportSourceCredentialsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/ImportSourceCredentials>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthType => Str

The type of authentication used to connect to a GitHub, GitHub
Enterprise, or Bitbucket repository. An OAUTH connection is not
supported by the API and must be created using the AWS CodeBuild
console.

Valid values are: C<"OAUTH">, C<"BASIC_AUTH">, C<"PERSONAL_ACCESS_TOKEN">

=head2 B<REQUIRED> ServerType => Str

The source provider used for this project.

Valid values are: C<"GITHUB">, C<"BITBUCKET">, C<"GITHUB_ENTERPRISE">

=head2 B<REQUIRED> Token => Str

For GitHub or GitHub Enterprise, this is the personal access token. For
Bitbucket, this is the app password.



=head2 Username => Str

The Bitbucket username when the C<authType> is BASIC_AUTH. This
parameter is not valid for other types of source providers or
connections.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportSourceCredentials in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

