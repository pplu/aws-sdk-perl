
package Paws::CodeGuruReviewer::AssociateRepository;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has KMSKeyDetails => (is => 'ro', isa => 'Paws::CodeGuruReviewer::KMSKeyDetails');
  has Repository => (is => 'ro', isa => 'Paws::CodeGuruReviewer::Repository', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::CodeGuruReviewer::TagMap');

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
        Bitbucket => {
          ConnectionArn => 'MyConnectionArn',    # max: 256
          Name          => 'MyName',             # min: 1, max: 100
          Owner         => 'MyOwner',            # min: 1, max: 100

        },    # OPTIONAL
        CodeCommit => {
          Name => 'MyName',    # min: 1, max: 100

        },    # OPTIONAL
        GitHubEnterpriseServer => {
          ConnectionArn => 'MyConnectionArn',    # max: 256
          Name          => 'MyName',             # min: 1, max: 100
          Owner         => 'MyOwner',            # min: 1, max: 100

        },    # OPTIONAL
      },
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      KMSKeyDetails      => {
        EncryptionOption => 'AWS_OWNED_CMK'
        ,    # values: AWS_OWNED_CMK, CUSTOMER_MANAGED_CMK; OPTIONAL
        KMSKeyId => 'MyKMSKeyId',    # min: 1, max: 2048; OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $RepositoryAssociation =
      $AssociateRepositoryResponse->RepositoryAssociation;
    my $Tags = $AssociateRepositoryResponse->Tags;

    # Returns a L<Paws::CodeGuruReviewer::AssociateRepositoryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer/AssociateRepository>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Amazon CodeGuru Reviewer uses this value to prevent the accidental
creation of duplicate repository associations if there are failures and
retries.



=head2 KMSKeyDetails => L<Paws::CodeGuruReviewer::KMSKeyDetails>

A C<KMSKeyDetails> object that contains:

=over

=item *

The encryption option for this repository association. It is either
owned by AWS Key Management Service (KMS) (C<AWS_OWNED_CMK>) or
customer managed (C<CUSTOMER_MANAGED_CMK>).

=item *

The ID of the AWS KMS key that is associated with this respository
association.

=back




=head2 B<REQUIRED> Repository => L<Paws::CodeGuruReviewer::Repository>

The repository to associate.



=head2 Tags => L<Paws::CodeGuruReviewer::TagMap>

An array of key-value pairs used to tag an associated repository. A tag
is a custom attribute label with two parts:

=over

=item *

A I<tag key> (for example, C<CostCenter>, C<Environment>, C<Project>,
or C<Secret>). Tag keys are case sensitive.

=item *

An optional field known as a I<tag value> (for example,
C<111122223333>, C<Production>, or a team name). Omitting the tag value
is the same as using an empty string. Like tag keys, tag values are
case sensitive.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateRepository in L<Paws::CodeGuruReviewer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

