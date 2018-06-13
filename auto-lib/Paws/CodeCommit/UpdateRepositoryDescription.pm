
package Paws::CodeCommit::UpdateRepositoryDescription;
  use Moose;
  has RepositoryDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryDescription' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRepositoryDescription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::UpdateRepositoryDescription - Arguments for method UpdateRepositoryDescription on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRepositoryDescription on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method UpdateRepositoryDescription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRepositoryDescription.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    $codecommit->UpdateRepositoryDescription(
      RepositoryName        => 'MyRepositoryName',
      RepositoryDescription => 'MyRepositoryDescription',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/UpdateRepositoryDescription>

=head1 ATTRIBUTES


=head2 RepositoryDescription => Str

The new comment or description for the specified repository. Repository
descriptions are limited to 1,000 characters.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository to set or change the comment or description
for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRepositoryDescription in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

