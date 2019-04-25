
package Paws::CodeCommit::CreateRepository;
  use Moose;
  has RepositoryDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryDescription' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRepository');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::CreateRepositoryOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::CreateRepository - Arguments for method CreateRepository on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRepository on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method CreateRepository.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRepository.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $CreateRepositoryOutput = $codecommit->CreateRepository(
      RepositoryName        => 'MyRepositoryName',
      RepositoryDescription => 'MyRepositoryDescription',    # OPTIONAL
    );

    # Results:
    my $RepositoryMetadata = $CreateRepositoryOutput->RepositoryMetadata;

    # Returns a L<Paws::CodeCommit::CreateRepositoryOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/CreateRepository>

=head1 ATTRIBUTES


=head2 RepositoryDescription => Str

A comment or description about the new repository.

The description field for a repository accepts all HTML characters and
all valid Unicode characters. Applications that do not HTML-encode the
description and display it in a web page could expose users to
potentially malicious code. Make sure that you HTML-encode the
description field in any application that uses this API to display the
repository description on a web page.



=head2 B<REQUIRED> RepositoryName => Str

The name of the new repository to be created.

The repository name must be unique across the calling AWS account. In
addition, repository names are limited to 100 alphanumeric, dash, and
underscore characters, and cannot include certain characters. For a
full description of the limits on repository names, see Limits
(http://docs.aws.amazon.com/codecommit/latest/userguide/limits.html) in
the AWS CodeCommit User Guide. The suffix ".git" is prohibited.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRepository in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

