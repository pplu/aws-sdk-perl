package Paws::CloudTrail::Tag;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::Tag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudTrail::Tag object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudTrail::Tag object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

A custom key-value pair associated with a resource such as a CloudTrail
trail.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  The key in a key-value pair. The key must be must be no longer than 128
Unicode characters. The key must be unique for the resource to which it
applies.


=head2 Value => Str

  The value in a key-value pair of a tag. The value must be no longer
than 256 Unicode characters.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

