
package Paws::Kendra::DescribeQuerySuggestionsBlockListResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has FileSizeBytes => (is => 'ro', isa => 'Int');
  has Id => (is => 'ro', isa => 'Str');
  has IndexId => (is => 'ro', isa => 'Str');
  has ItemCount => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has SourceS3Path => (is => 'ro', isa => 'Paws::Kendra::S3Path');
  has Status => (is => 'ro', isa => 'Str');
  has UpdatedAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DescribeQuerySuggestionsBlockListResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

Shows the date-time a block list for query suggestions was last
created.


=head2 Description => Str

Shows the description for the block list.


=head2 ErrorMessage => Str

Shows the error message with details when there are issues in
processing the block list.


=head2 FileSizeBytes => Int

Shows the current size of the block list text file in S3.


=head2 Id => Str

Shows the unique identifier of the block list.


=head2 IndexId => Str

Shows the identifier of the index for the block list.


=head2 ItemCount => Int

Shows the current number of valid, non-empty words or phrases in the
block list text file.


=head2 Name => Str

Shows the name of the block list.


=head2 RoleArn => Str

Shows the current IAM (Identity and Access Management) role used by
Amazon Kendra to access the block list text file in S3.

The role needs S3 read permissions to your file in S3 and needs to give
STS (Security Token Service) assume role permissions to Amazon Kendra.


=head2 SourceS3Path => L<Paws::Kendra::S3Path>

Shows the current S3 path to your block list text file in your S3
bucket.

Each block word or phrase should be on a separate line in a text file.

For information on the current quota limits for block lists, see Quotas
for Amazon Kendra
(https://docs.aws.amazon.com/kendra/latest/dg/quotas.html).


=head2 Status => Str

Shows whether the current status of the block list is C<ACTIVE> or
C<INACTIVE>.

Valid values are: C<"ACTIVE">, C<"CREATING">, C<"DELETING">, C<"UPDATING">, C<"ACTIVE_BUT_UPDATE_FAILED">, C<"FAILED">
=head2 UpdatedAt => Str

Shows the date-time a block list for query suggestions was last
updated.


=head2 _request_id => Str


=cut

1;