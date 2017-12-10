package Paws::Route53::Tag;
  use Moose;
  has Key => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::Tag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::Tag object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::Tag object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

A complex type that contains information about a tag that you want to
add or edit for the specified health check or hosted zone.

=head1 ATTRIBUTES


=head2 Key => Str

  The value of C<Key> depends on the operation that you want to perform:

=over

=item *

B<Add a tag to a health check or hosted zone>: C<Key> is the name that
you want to give the new tag.

=item *

B<Edit a tag>: C<Key> is the name of the tag that you want to change
the C<Value> for.

=item *

B<Delete a key>: C<Key> is the name of the tag you want to remove.

=item *

B<Give a name to a health check>: Edit the default C<Name> tag. In the
Amazon Route 53 console, the list of your health checks includes a
B<Name> column that lets you see the name that you've given to each
health check.

=back



=head2 Value => Str

  The value of C<Value> depends on the operation that you want to
perform:

=over

=item *

B<Add a tag to a health check or hosted zone>: C<Value> is the value
that you want to give the new tag.

=item *

B<Edit a tag>: C<Value> is the new value that you want to assign the
tag.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

