package Paws::Transfer::Tag;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::Tag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Transfer::Tag object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Transfer::Tag object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

Creates a key-value pair for a specific resource. Tags are metadata
that you can use to search for and group a resource for various
purposes. You can apply tags to servers, users, and roles. A tag key
can take more than one value. For example, to group servers for
accounting purposes, you might create a tag called C<Group> and assign
the values C<Research> and C<Accounting> to that group.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  The name assigned to the tag that you create.


=head2 B<REQUIRED> Value => Str

  This property contains one or more values that you assigned to the key
name you create.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

