
package Paws::ECS::DescribeTaskDefinitionResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has TaskDefinition => (is => 'ro', isa => 'Paws::ECS::TaskDefinition', traits => ['NameInRequest'], request_name => 'taskDefinition' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DescribeTaskDefinitionResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::ECS::Tag>]

The metadata that is applied to the task definition to help you
categorize and organize them. Each tag consists of a key and an
optional value, both of which you define.

The following basic restrictions apply to tags:

=over

=item *

Maximum number of tags per resource - 50

=item *

For each resource, each tag key must be unique, and each tag key can
have only one value.

=item *

Maximum key length - 128 Unicode characters in UTF-8

=item *

Maximum value length - 256 Unicode characters in UTF-8

=item *

If your tagging schema is used across multiple services and resources,
remember that other services may have restrictions on allowed
characters. Generally allowed characters are: letters, numbers, and
spaces representable in UTF-8, and the following characters: + - = . _
: / @.

=item *

Tag keys and values are case-sensitive.

=item *

Do not use C<aws:>, C<AWS:>, or any upper or lowercase combination of
such as a prefix for either keys or values as it is reserved for AWS
use. You cannot edit or delete tag keys or values with this prefix.
Tags with this prefix do not count against your tags per resource
limit.

=back



=head2 TaskDefinition => L<Paws::ECS::TaskDefinition>

The full task definition description.


=head2 _request_id => Str


=cut

1;