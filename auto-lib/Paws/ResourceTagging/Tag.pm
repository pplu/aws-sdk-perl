# Generated by default/object.tt
package Paws::ResourceTagging::Tag;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceTagging::Tag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ResourceTagging::Tag object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ResourceTagging::Tag object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

The metadata that you apply to AWS resources to help you categorize and
organize them. Each tag consists of a key and a value, both of which
you define. For more information, see Tagging AWS Resources
(http://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
I<AWS General Reference>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

One part of a key-value pair that makes up a tag. A key is a general
label that acts like a category for more specific tag values.


=head2 B<REQUIRED> Value => Str

One part of a key-value pair that make up a tag. A value acts as a
descriptor within a tag category (key). The value can be empty or null.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ResourceTagging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

