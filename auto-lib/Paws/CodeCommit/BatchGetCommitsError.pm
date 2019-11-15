package Paws::CodeCommit::BatchGetCommitsError;
  use Moose;
  has CommitId => (is => 'ro', isa => 'Str', request_name => 'commitId', traits => ['NameInRequest']);
  has ErrorCode => (is => 'ro', isa => 'Str', request_name => 'errorCode', traits => ['NameInRequest']);
  has ErrorMessage => (is => 'ro', isa => 'Str', request_name => 'errorMessage', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::BatchGetCommitsError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::BatchGetCommitsError object:

  $service_obj->Method(Att1 => { CommitId => $value, ..., ErrorMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::BatchGetCommitsError object:

  $result = $service_obj->Method(...);
  $result->Att1->CommitId

=head1 DESCRIPTION

Returns information about errors in a BatchGetCommits operation.

=head1 ATTRIBUTES


=head2 CommitId => Str

  A commit ID that either could not be found or was not in a valid
format.


=head2 ErrorCode => Str

  An error code that specifies whether the commit ID was not valid or not
found.


=head2 ErrorMessage => Str

  An error message that provides detail about why the commit ID either
was not found or was not valid.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

