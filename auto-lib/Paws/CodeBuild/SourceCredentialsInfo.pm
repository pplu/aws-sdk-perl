package Paws::CodeBuild::SourceCredentialsInfo;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has AuthType => (is => 'ro', isa => 'Str', request_name => 'authType', traits => ['NameInRequest']);
  has ServerType => (is => 'ro', isa => 'Str', request_name => 'serverType', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::SourceCredentialsInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::SourceCredentialsInfo object:

  $service_obj->Method(Att1 => { Arn => $value, ..., ServerType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::SourceCredentialsInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Information about the credentials for a GitHub, GitHub Enterprise, or
Bitbucket repository.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the token.


=head2 AuthType => Str

  The type of authentication used by the credentials. Valid options are
OAUTH, BASIC_AUTH, or PERSONAL_ACCESS_TOKEN.


=head2 ServerType => Str

  The type of source provider. The valid options are GITHUB,
GITHUB_ENTERPRISE, or BITBUCKET.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

