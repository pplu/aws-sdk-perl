
package Paws::IAM::GetOpenIDConnectProviderResponse;
  use Moose;
  has ClientIDList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CreateDate => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IAM::Tag]');
  has ThumbprintList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Url => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetOpenIDConnectProviderResponse

=head1 ATTRIBUTES


=head2 ClientIDList => ArrayRef[Str|Undef]

A list of client IDs (also known as audiences) that are associated with
the specified IAM OIDC provider resource object. For more information,
see CreateOpenIDConnectProvider.


=head2 CreateDate => Str

The date and time when the IAM OIDC provider resource object was
created in the AWS account.


=head2 Tags => ArrayRef[L<Paws::IAM::Tag>]

A list of tags that are attached to the specified IAM OIDC provider.
The returned list of tags is sorted by tag key. For more information
about tagging, see Tagging IAM resources
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
I<IAM User Guide>.


=head2 ThumbprintList => ArrayRef[Str|Undef]

A list of certificate thumbprints that are associated with the
specified IAM OIDC provider resource object. For more information, see
CreateOpenIDConnectProvider.


=head2 Url => Str

The URL that the IAM OIDC provider resource object is associated with.
For more information, see CreateOpenIDConnectProvider.


=head2 _request_id => Str


=cut

