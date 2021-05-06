
package Paws::Kendra::DescribeIndexResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DocumentMetadataConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::DocumentMetadataConfiguration]');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has IndexStatistics => (is => 'ro', isa => 'Paws::Kendra::IndexStatistics');
  has Name => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has ServerSideEncryptionConfiguration => (is => 'ro', isa => 'Paws::Kendra::ServerSideEncryptionConfiguration');
  has Status => (is => 'ro', isa => 'Str');
  has UpdatedAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DescribeIndexResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The Unix datetime that the index was created.


=head2 Description => Str

The description of the index.


=head2 DocumentMetadataConfigurations => ArrayRef[L<Paws::Kendra::DocumentMetadataConfiguration>]

Configuration settings for any metadata applied to the documents in the
index.


=head2 ErrorMessage => Str

When th eC<Status> field value is C<FAILED>, the C<ErrorMessage> field
contains a message that explains why.


=head2 Id => Str

the name of the index.


=head2 IndexStatistics => L<Paws::Kendra::IndexStatistics>

Provides information about the number of FAQ questions and answers and
the number of text documents indexed.


=head2 Name => Str

The name of the index.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that gives Amazon Kendra
permission to write to your Amazon Cloudwatch logs.


=head2 ServerSideEncryptionConfiguration => L<Paws::Kendra::ServerSideEncryptionConfiguration>

The identifier of the AWS KMS customer master key (CMK) used to encrypt
your data. Amazon Kendra doesn't support asymmetric CMKs.


=head2 Status => Str

The current status of the index. When the value is C<ACTIVE>, the index
is ready for use. If the C<Status> field value is C<FAILED>, the
C<ErrorMessage> field contains a message that explains why.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"DELETING">, C<"FAILED">, C<"SYSTEM_UPDATING">
=head2 UpdatedAt => Str

The Unix datetime that the index was last updated.


=head2 _request_id => Str


=cut

1;