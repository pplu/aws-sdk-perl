# Generated from json/callargs_class.tt

package Paws::ECS::TagResource;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ECS::Types qw/ECS_Tag/;
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[ECS_Tag], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'TagResource');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ECS::TagResourceResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'type' => 'ArrayRef[ECS_Tag]',
                           'class' => 'Paws::ECS::Tag'
                         },
               'ResourceArn' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'ResourceArn' => 1,
                    'Tags' => 1
                  },
  'NameInRequest' => {
                       'Tags' => 'tags',
                       'ResourceArn' => 'resourceArn'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::TagResource - Arguments for method TagResource on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $TagResourceResponse = $ecs->TagResource(
      ResourceArn => 'MyString',
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128; OPTIONAL
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource to which to add tags.
Currently, the supported resources are Amazon ECS tasks, services, task
definitions, clusters, and container instances.



=head2 B<REQUIRED> Tags => ArrayRef[ECS_Tag]

The tags to add to the resource. A tag is an array of key-value pairs.

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





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

