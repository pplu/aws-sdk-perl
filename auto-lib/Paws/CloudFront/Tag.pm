package Paws::CloudFront::Tag;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::Tag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::Tag object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::Tag object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

A complex type that contains C<Tag> key and C<Tag> value.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  A string that contains C<Tag> key.

The string length should be between 1 and 128 characters. Valid
characters include C<a-z>, C<A-Z>, C<0-9>, space, and the special
characters C<_ - . : / = + @>.


=head2 Value => Str

  A string that contains an optional C<Tag> value.

The string length should be between 0 and 256 characters. Valid
characters include C<a-z>, C<A-Z>, C<0-9>, space, and the special
characters C<_ - . : / = + @>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

