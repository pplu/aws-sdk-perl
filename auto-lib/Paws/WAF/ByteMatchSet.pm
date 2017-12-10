package Paws::WAF::ByteMatchSet;
  use Moose;
  has ByteMatchSetId => (is => 'ro', isa => 'Str', required => 1);
  has ByteMatchTuples => (is => 'ro', isa => 'ArrayRef[Paws::WAF::ByteMatchTuple]', required => 1);
  has Name => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::ByteMatchSet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAF::ByteMatchSet object:

  $service_obj->Method(Att1 => { ByteMatchSetId => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAF::ByteMatchSet object:

  $result = $service_obj->Method(...);
  $result->Att1->ByteMatchSetId

=head1 DESCRIPTION

In a GetByteMatchSet request, C<ByteMatchSet> is a complex type that
contains the C<ByteMatchSetId> and C<Name> of a C<ByteMatchSet>, and
the values that you specified when you updated the C<ByteMatchSet>.

A complex type that contains C<ByteMatchTuple> objects, which specify
the parts of web requests that you want AWS WAF to inspect and the
values that you want AWS WAF to search for. If a C<ByteMatchSet>
contains more than one C<ByteMatchTuple> object, a request needs to
match the settings in only one C<ByteMatchTuple> to be considered a
match.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ByteMatchSetId => Str

  The C<ByteMatchSetId> for a C<ByteMatchSet>. You use C<ByteMatchSetId>
to get information about a C<ByteMatchSet> (see GetByteMatchSet),
update a C<ByteMatchSet> (see UpdateByteMatchSet), insert a
C<ByteMatchSet> into a C<Rule> or delete one from a C<Rule> (see
UpdateRule), and delete a C<ByteMatchSet> from AWS WAF (see
DeleteByteMatchSet).

C<ByteMatchSetId> is returned by CreateByteMatchSet and by
ListByteMatchSets.


=head2 B<REQUIRED> ByteMatchTuples => ArrayRef[L<Paws::WAF::ByteMatchTuple>]

  Specifies the bytes (typically a string that corresponds with ASCII
characters) that you want AWS WAF to search for in web requests, the
location in requests that you want AWS WAF to search, and other
settings.


=head2 Name => Str

  A friendly name or description of the ByteMatchSet. You can't change
C<Name> after you create a C<ByteMatchSet>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

