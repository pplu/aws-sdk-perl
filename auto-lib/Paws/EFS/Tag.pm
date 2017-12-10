package Paws::EFS::Tag;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::Tag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EFS::Tag object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EFS::Tag object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

A tag is a key-value pair. Allowed characters: letters, whitespace, and
numbers, representable in UTF-8, and the following characters:C< + - =
. _ : />

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  Tag key (String). The key can't start with C<aws:>.


=head2 B<REQUIRED> Value => Str

  Value of the tag key.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EFS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

