
package Paws::CodeGuruReviewer::AssociateRepository;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Repository => (is => 'ro', isa => 'Paws::CodeGuruReviewer::Repository', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateRepository');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/associations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruReviewer::AssociateRepositoryResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruReviewer::AssociateRepository - Arguments for method AssociateRepository on L<Paws::CodeGuruReviewer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateRepository on the
L<Amazon CodeGuru Reviewer|Paws::CodeGuruReviewer> service. Use the attributes of this class
as arguments to method AssociateRepository.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateRepository.

=head1 SYNOPSIS

    my $codeguru-reviewer = Paws->service('CodeGuruReviewer');
    my $AssociateRepositoryResponse = $codeguru -reviewer->AssociateRepository(
      Repository => {
        CodeCommit => {
          Name => 'MyName',    # min: 1, max: 100

        },    # OPTIONAL
      },
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
    );

    # Results:
    my $RepositoryAssociation =
      $AssociateRepositoryResponse->RepositoryAssociation;

    # Returns a L<Paws::CodeGuruReviewer::AssociateRepositoryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer/AssociateRepository>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.

If you want to add a new repository association, this parameter
specifies a unique identifier for the new repository association that
helps ensure idempotency.

If you use the AWS CLI or one of the AWS SDK to call this operation,
then you can leave this parameter empty. The CLI or SDK generates a
random UUID for you and includes that in the request. If you don't use
the SDK and instead generate a raw HTTP request to the Secrets Manager
service endpoint, then you must generate a ClientRequestToken yourself
for new versions and include that value in the request.

You typically only need to interact with this value if you implement
your own retry logic and want to ensure that a given repository
association is not created twice. We recommend that you generate a
UUID-type value to ensure uniqueness within the specified repository
association.

Amazon CodeGuru Reviewer uses this value to prevent the accidental
creation of duplicate repository associations if there are failures and
retries.



=head2 B<REQUIRED> Repository => L<Paws::CodeGuruReviewer::Repository>

The repository to associate.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateRepository in L<Paws::CodeGuruReviewer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

