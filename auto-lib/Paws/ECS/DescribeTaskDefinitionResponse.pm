# Generated from json/callresult_class.tt

package Paws::ECS::DescribeTaskDefinitionResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ECS::Types qw/ECS_TaskDefinition ECS_Tag/;
  has Tags => (is => 'ro', isa => ArrayRef[ECS_Tag]);
  has TaskDefinition => (is => 'ro', isa => ECS_TaskDefinition);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'type' => 'ArrayRef[ECS_Tag]',
                           'class' => 'Paws::ECS::Tag'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TaskDefinition' => {
                                     'type' => 'ECS_TaskDefinition',
                                     'class' => 'Paws::ECS::TaskDefinition'
                                   }
             },
  'NameInRequest' => {
                       'TaskDefinition' => 'taskDefinition',
                       'Tags' => 'tags'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECS::DescribeTaskDefinitionResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[ECS_Tag]

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



=head2 TaskDefinition => ECS_TaskDefinition

The full task definition description.


=head2 _request_id => Str


=cut

1;