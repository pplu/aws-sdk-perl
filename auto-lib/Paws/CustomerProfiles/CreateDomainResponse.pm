
package Paws::CustomerProfiles::CreateDomainResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', required => 1);
  has DeadLetterQueueUrl => (is => 'ro', isa => 'Str');
  has DefaultEncryptionKey => (is => 'ro', isa => 'Str');
  has DefaultExpirationDays => (is => 'ro', isa => 'Int', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has LastUpdatedAt => (is => 'ro', isa => 'Str', required => 1);
  has Matching => (is => 'ro', isa => 'Paws::CustomerProfiles::MatchingResponse');
  has Tags => (is => 'ro', isa => 'Paws::CustomerProfiles::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::CreateDomainResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

The timestamp of when the domain was created.


=head2 DeadLetterQueueUrl => Str

The URL of the SQS dead letter queue, which is used for reporting
errors associated with ingesting data from third party applications.


=head2 DefaultEncryptionKey => Str

The default encryption key, which is an AWS managed key, is used when
no specific type of encryption key is specified. It is used to encrypt
all data before it is placed in permanent or semi-permanent storage.


=head2 B<REQUIRED> DefaultExpirationDays => Int

The default number of days until the data within the domain expires.


=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.


=head2 B<REQUIRED> LastUpdatedAt => Str

The timestamp of when the domain was most recently edited.


=head2 Matching => L<Paws::CustomerProfiles::MatchingResponse>

The process of matching duplicate profiles. This process runs every
Saturday at 12AM.


=head2 Tags => L<Paws::CustomerProfiles::TagMap>

The tags used to organize, track, or control access for this resource.


=head2 _request_id => Str


=cut

