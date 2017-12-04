package Paws::ES::Tag;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::Tag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::Tag object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::Tag object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

Specifies a key value pair for a resource tag.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  Specifies the C<TagKey>, the name of the tag. Tag keys must be unique
for the Elasticsearch domain to which they are attached.


=head2 B<REQUIRED> Value => Str

  Specifies the C<TagValue>, the value assigned to the corresponding tag
key. Tag values can be null and do not have to be unique in a tag set.
For example, you can have a key value pair in a tag set of C<project :
Trinity> and C<cost-center : Trinity>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

