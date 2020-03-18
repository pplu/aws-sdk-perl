package Paws::Athena::Tag;
  use Moose;
  has Key => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::Tag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Athena::Tag object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Athena::Tag object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

A tag that you can add to a resource. A tag is a label that you assign
to an AWS Athena resource (a workgroup). Each tag consists of a key and
an optional value, both of which you define. Tags enable you to
categorize workgroups in Athena, for example, by purpose, owner, or
environment. Use a consistent set of tag keys to make it easier to
search and filter workgroups in your account. The maximum tag key
length is 128 Unicode characters in UTF-8. The maximum tag value length
is 256 Unicode characters in UTF-8. You can use letters and numbers
representable in UTF-8, and the following characters: + - = . _ : / @.
Tag keys and values are case-sensitive. Tag keys must be unique per
resource.

=head1 ATTRIBUTES


=head2 Key => Str

  A tag key. The tag key length is from 1 to 128 Unicode characters in
UTF-8. You can use letters and numbers representable in UTF-8, and the
following characters: + - = . _ : / @. Tag keys are case-sensitive and
must be unique per resource.


=head2 Value => Str

  A tag value. The tag value length is from 0 to 256 Unicode characters
in UTF-8. You can use letters and numbers representable in UTF-8, and
the following characters: + - = . _ : / @. Tag values are
case-sensitive.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

