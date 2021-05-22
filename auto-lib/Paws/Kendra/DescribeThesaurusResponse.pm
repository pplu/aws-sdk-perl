
package Paws::Kendra::DescribeThesaurusResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has FileSizeBytes => (is => 'ro', isa => 'Int');
  has Id => (is => 'ro', isa => 'Str');
  has IndexId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has SourceS3Path => (is => 'ro', isa => 'Paws::Kendra::S3Path');
  has Status => (is => 'ro', isa => 'Str');
  has SynonymRuleCount => (is => 'ro', isa => 'Int');
  has TermCount => (is => 'ro', isa => 'Int');
  has UpdatedAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DescribeThesaurusResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The Unix datetime that the thesaurus was created.


=head2 Description => Str

The thesaurus description.


=head2 ErrorMessage => Str

When the C<Status> field value is C<FAILED>, the C<ErrorMessage> field
provides more information.


=head2 FileSizeBytes => Int

The size of the thesaurus file in bytes.


=head2 Id => Str

The identifier of the thesaurus.


=head2 IndexId => Str

The identifier of the index associated with the thesaurus to describe.


=head2 Name => Str

The thesaurus name.


=head2 RoleArn => Str

An AWS Identity and Access Management (IAM) role that gives Amazon
Kendra permissions to access thesaurus file specified in
C<SourceS3Path>.


=head2 SourceS3Path => L<Paws::Kendra::S3Path>




=head2 Status => Str

The current status of the thesaurus. When the value is C<ACTIVE>,
queries are able to use the thesaurus. If the C<Status> field value is
C<FAILED>, the C<ErrorMessage> field provides more information.

If the status is C<ACTIVE_BUT_UPDATE_FAILED>, it means that Amazon
Kendra could not ingest the new thesaurus file. The old thesaurus file
is still active.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"DELETING">, C<"UPDATING">, C<"ACTIVE_BUT_UPDATE_FAILED">, C<"FAILED">
=head2 SynonymRuleCount => Int

The number of synonym rules in the thesaurus file.


=head2 TermCount => Int

The number of unique terms in the thesaurus file. For example, the
synonyms C<a,b,c> and C<a=E<gt>d>, the term count would be 4.


=head2 UpdatedAt => Str

The Unix datetime that the thesaurus was last updated.


=head2 _request_id => Str


=cut

1;