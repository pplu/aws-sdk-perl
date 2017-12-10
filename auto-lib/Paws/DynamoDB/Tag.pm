package Paws::DynamoDB::Tag;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::Tag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::Tag object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::Tag object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

Describes a tag. A tag is a key-value pair. You can add up to 50 tags
to a single DynamoDB table.

AWS-assigned tag names and values are automatically assigned the aws:
prefix, which the user cannot assign. AWS-assigned tag names do not
count towards the tag limit of 50. User-assigned tag names have the
prefix user: in the Cost Allocation Report. You cannot backdate the
application of a tag.

For an overview on tagging DynamoDB resources, see Tagging for DynamoDB
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html)
in the I<Amazon DynamoDB Developer Guide>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  The key of the tag.Tag keys are case sensitive. Each DynamoDB table can
only have up to one tag with the same key. If you try to add an
existing tag (same key), the existing tag value will be updated to the
new value.


=head2 B<REQUIRED> Value => Str

  The value of the tag. Tag values are case-sensitive and can be null.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

