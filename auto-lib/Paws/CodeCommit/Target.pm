package Paws::CodeCommit::Target;
  use Moose;
  has DestinationReference => (is => 'ro', isa => 'Str', request_name => 'destinationReference', traits => ['NameInRequest']);
  has RepositoryName => (is => 'ro', isa => 'Str', request_name => 'repositoryName', traits => ['NameInRequest'], required => 1);
  has SourceReference => (is => 'ro', isa => 'Str', request_name => 'sourceReference', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::Target

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::Target object:

  $service_obj->Method(Att1 => { DestinationReference => $value, ..., SourceReference => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::Target object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationReference

=head1 DESCRIPTION

Returns information about a target for a pull request.

=head1 ATTRIBUTES


=head2 DestinationReference => Str

  The branch of the repository where the pull request changes will be
merged into. Also known as the destination branch.


=head2 B<REQUIRED> RepositoryName => Str

  The name of the repository that contains the pull request.


=head2 B<REQUIRED> SourceReference => Str

  The branch of the repository that contains the changes for the pull
request. Also known as the source branch.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

