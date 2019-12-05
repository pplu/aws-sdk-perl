package Paws::CodeGuruReviewer::Repository;
  use Moose;
  has CodeCommit => (is => 'ro', isa => 'Paws::CodeGuruReviewer::CodeCommitRepository');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruReviewer::Repository

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeGuruReviewer::Repository object:

  $service_obj->Method(Att1 => { CodeCommit => $value, ..., CodeCommit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeGuruReviewer::Repository object:

  $result = $service_obj->Method(...);
  $result->Att1->CodeCommit

=head1 DESCRIPTION

Information about a repository.

=head1 ATTRIBUTES


=head2 CodeCommit => L<Paws::CodeGuruReviewer::CodeCommitRepository>

  Information about an AWS CodeCommit repository.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeGuruReviewer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

