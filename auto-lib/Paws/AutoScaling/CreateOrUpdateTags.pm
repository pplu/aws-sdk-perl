
package Paws::AutoScaling::CreateOrUpdateTags {
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateOrUpdateTags');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::CreateOrUpdateTags - Arguments for method CreateOrUpdateTags on Paws::AutoScaling

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateOrUpdateTags on the 
Auto Scaling service. Use the attributes of this class
as arguments to method CreateOrUpdateTags.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to CreateOrUpdateTags.

As an example:

  $service_obj->CreateOrUpdateTags(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> Tags => ArrayRef[Paws::AutoScaling::Tag]

  

The tag to be created or updated. Each tag should be defined by its
resource type, resource ID, key, value, and a propagate flag. The
resource type and resource ID identify the type and name of resource
for which the tag is created. Currently, C<auto-scaling-group> is the
only supported resource type. The valid value for the resource ID is
I<groupname>.

The C<PropagateAtLaunch> flag defines whether the new tag will be
applied to instances launched by the group. Valid values are C<true> or
C<false>. However, instances that are already running will not get the
new or updated tag. Likewise, when you modify a tag, the updated
version will be applied only to new instances launched by the group
after the change. Running instances that had the previous version of
the tag will continue to have the older tag.

When you create a tag and a tag of the same name already exists, the
operation overwrites the previous tag definition, but you will not get
an error message.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for CreateOrUpdateTags in Paws::AutoScaling

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

