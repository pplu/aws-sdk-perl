package Paws::Route53Resolver::Tag;
  use Moose;
  has Key => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::Tag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53Resolver::Tag object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53Resolver::Tag object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

One tag that you want to add to the specified resource. A tag consists
of a C<Key> (a name for the tag) and a C<Value>.

=head1 ATTRIBUTES


=head2 Key => Str

  The name for the tag. For example, if you want to associate Resolver
resources with the account IDs of your customers for billing purposes,
the value of C<Key> might be C<account-id>.


=head2 Value => Str

  The value for the tag. For example, if C<Key> is C<account-id>, then
C<Value> might be the ID of the customer account that you're creating
the resource for.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

