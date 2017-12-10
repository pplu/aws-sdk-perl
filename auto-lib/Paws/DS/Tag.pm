package Paws::DS::Tag;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::Tag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DS::Tag object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DS::Tag object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

Metadata assigned to a directory consisting of a key-value pair.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  Required name of the tag. The string value can be Unicode characters
and cannot be prefixed with "aws:". The string can contain only the set
of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-'
(Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").


=head2 B<REQUIRED> Value => Str

  The optional value of the tag. The string value can be Unicode
characters. The string can contain only the set of Unicode letters,
digits, white-space, '_', '.', '/', '=', '+', '-' (Java regex:
"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

