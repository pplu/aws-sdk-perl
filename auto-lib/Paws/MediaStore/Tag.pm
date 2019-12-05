package Paws::MediaStore::Tag;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaStore::Tag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaStore::Tag object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaStore::Tag object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

A collection of tags associated with a container. Each tag consists of
a key:value pair, which can be anything you define. Typically, the tag
key represents a category (such as "environment") and the tag value
represents a specific value within that category (such as "test,"
"development," or "production"). You can add up to 50 tags to each
container. For more information about tagging, including naming and
usage conventions, see Tagging Resources in MediaStore
(https://docs.aws.amazon.com/mediastore/latest/ug/tagging.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  Part of the key:value pair that defines a tag. You can use a tag key to
describe a category of information, such as "customer." Tag keys are
case-sensitive.


=head2 Value => Str

  Part of the key:value pair that defines a tag. You can use a tag value
to describe a specific value within a category, such as "companyA" or
"companyB." Tag values are case-sensitive.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaStore>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

