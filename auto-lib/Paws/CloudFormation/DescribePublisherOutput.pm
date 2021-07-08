
package Paws::CloudFormation::DescribePublisherOutput;
  use Moose;
  has IdentityProvider => (is => 'ro', isa => 'Str');
  has PublisherId => (is => 'ro', isa => 'Str');
  has PublisherProfile => (is => 'ro', isa => 'Str');
  has PublisherStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribePublisherOutput

=head1 ATTRIBUTES


=head2 IdentityProvider => Str

The type of account used as the identity provider when registering this
publisher with CloudFormation.

Valid values are: C<"AWS_Marketplace">, C<"GitHub">, C<"Bitbucket">
=head2 PublisherId => Str

The ID of the extension publisher.


=head2 PublisherProfile => Str

The URL to the publisher's profile with the identity provider.


=head2 PublisherStatus => Str

Whether the publisher is verified. Currently, all registered publishers
are verified.

Valid values are: C<"VERIFIED">, C<"UNVERIFIED">
=head2 _request_id => Str


=cut

