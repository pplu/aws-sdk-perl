package Paws::CodeDeploy::GitHubLocation;
  use Moose;
  has commitId => (is => 'ro', isa => 'Str');
  has repository => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::GitHubLocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::GitHubLocation object:

  $service_obj->Method(Att1 => { commitId => $value, ..., repository => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::GitHubLocation object:

  $result = $service_obj->Method(...);
  $result->Att1->commitId

=head1 DESCRIPTION

Information about the location of application artifacts that are stored
in GitHub.

=head1 ATTRIBUTES

=head2 commitId => Str

  The SHA1 commit ID of the GitHub commit that references the that
represents the bundled artifacts for the application revision.

=head2 repository => Str

  The GitHub account and repository pair that stores a reference to the
commit that represents the bundled artifacts for the application
revision.

Specified as account/repository.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

