package Paws::SESv2::Tag;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::Tag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SESv2::Tag object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SESv2::Tag object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

An object that defines the tags that are associated with a resource. A
I<tag> is a label that you optionally define and associate with a
resource. Tags can help you categorize and manage resources in
different ways, such as by purpose, owner, environment, or other
criteria. A resource can have as many as 50 tags.

Each tag consists of a required I<tag key> and an associated I<tag
value>, both of which you define. A tag key is a general label that
acts as a category for a more specific tag value. A tag value acts as a
descriptor within a tag key. A tag key can contain as many as 128
characters. A tag value can contain as many as 256 characters. The
characters can be Unicode letters, digits, white space, or one of the
following symbols: _ . : / = + -. The following additional restrictions
apply to tags:

=over

=item *

Tag keys and values are case sensitive.

=item *

For each associated resource, each tag key must be unique and it can
have only one value.

=item *

The C<aws:> prefix is reserved for use by AWS; you canE<rsquo>t use it
in any tag keys or values that you define. In addition, you can't edit
or remove tag keys or values that use this prefix. Tags that use this
prefix donE<rsquo>t count against the limit of 50 tags per resource.

=item *

You can associate tags with public or shared resources, but the tags
are available only for your AWS account, not any other accounts that
share the resource. In addition, the tags are available only for
resources that are located in the specified AWS Region for your AWS
account.

=back


=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  One part of a key-value pair that defines a tag. The maximum length of
a tag key is 128 characters. The minimum length is 1 character.


=head2 B<REQUIRED> Value => Str

  The optional part of a key-value pair that defines a tag. The maximum
length of a tag value is 256 characters. The minimum length is 0
characters. If you don't want a resource to have a specific tag value,
don't specify a value for this parameter. If you don't specify a value,
Amazon SES sets the value to an empty string.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

