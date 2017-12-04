package Paws::CodeCommit::RepositoryNameIdPair;
  use Moose;
  has RepositoryId => (is => 'ro', isa => 'Str', request_name => 'repositoryId', traits => ['NameInRequest']);
  has RepositoryName => (is => 'ro', isa => 'Str', request_name => 'repositoryName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::RepositoryNameIdPair

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::RepositoryNameIdPair object:

  $service_obj->Method(Att1 => { RepositoryId => $value, ..., RepositoryName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::RepositoryNameIdPair object:

  $result = $service_obj->Method(...);
  $result->Att1->RepositoryId

=head1 DESCRIPTION

Information about a repository name and ID.

=head1 ATTRIBUTES


=head2 RepositoryId => Str

  The ID associated with the repository.


=head2 RepositoryName => Str

  The name associated with the repository.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

