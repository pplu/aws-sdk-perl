# Generated from json/callargs_class.tt

package Paws::CodeBuild::ImportSourceCredentials;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::CodeBuild::Types qw//;
  has AuthType => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ServerType => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ShouldOverwrite => (is => 'ro', isa => Bool, predicate => 1);
  has Token => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Username => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ImportSourceCredentials');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CodeBuild::ImportSourceCredentialsOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AuthType' => {
                               'type' => 'Str'
                             },
               'Username' => {
                               'type' => 'Str'
                             },
               'ShouldOverwrite' => {
                                      'type' => 'Bool'
                                    },
               'Token' => {
                            'type' => 'Str'
                          },
               'ServerType' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'ShouldOverwrite' => 'shouldOverwrite',
                       'Username' => 'username',
                       'AuthType' => 'authType',
                       'ServerType' => 'serverType',
                       'Token' => 'token'
                     },
  'IsRequired' => {
                    'AuthType' => 1,
                    'ServerType' => 1,
                    'Token' => 1
                  }
}
;
    return $Params_map;
  }

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
      AuthType        => 'OAUTH',
      ServerType      => 'GITHUB',
      Token           => 'MySensitiveNonEmptyString',
      ShouldOverwrite => 1,                             # OPTIONAL
      Username        => 'MyNonEmptyString',            # OPTIONAL
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

=head2 ShouldOverwrite => Bool

Set to C<false> to prevent overwriting the repository source
credentials. Set to C<true> to overwrite the repository source
credentials. The default value is C<true>.



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

