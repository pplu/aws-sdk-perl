package Paws::CodeStar::CodeDestination;
  use Moose;
  has CodeCommit => (is => 'ro', isa => 'Paws::CodeStar::CodeCommitCodeDestination', request_name => 'codeCommit', traits => ['NameInRequest']);
  has GitHub => (is => 'ro', isa => 'Paws::CodeStar::GitHubCodeDestination', request_name => 'gitHub', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::CodeDestination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeStar::CodeDestination object:

  $service_obj->Method(Att1 => { CodeCommit => $value, ..., GitHub => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeStar::CodeDestination object:

  $result = $service_obj->Method(...);
  $result->Att1->CodeCommit

=head1 DESCRIPTION

The repository to be created in AWS CodeStar. Valid values are AWS
CodeCommit or GitHub. After AWS CodeStar provisions the new repository,
the source code files provided with the project request are placed in
the repository.

=head1 ATTRIBUTES


=head2 CodeCommit => L<Paws::CodeStar::CodeCommitCodeDestination>

  Information about the AWS CodeCommit repository to be created in AWS
CodeStar. This is where the source code files provided with the project
request will be uploaded after project creation.


=head2 GitHub => L<Paws::CodeStar::GitHubCodeDestination>

  Information about the GitHub repository to be created in AWS CodeStar.
This is where the source code files provided with the project request
will be uploaded after project creation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeStar>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

