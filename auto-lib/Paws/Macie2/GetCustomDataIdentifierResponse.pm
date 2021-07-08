
package Paws::Macie2::GetCustomDataIdentifierResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has Deleted => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'deleted');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has IgnoreWords => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ignoreWords');
  has Keywords => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'keywords');
  has MaximumMatchDistance => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maximumMatchDistance');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Regex => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'regex');
  has Tags => (is => 'ro', isa => 'Paws::Macie2::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::GetCustomDataIdentifierResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the custom data identifier.


=head2 CreatedAt => Str

The date and time, in UTC and extended ISO 8601 format, when the custom
data identifier was created.


=head2 Deleted => Bool

Specifies whether the custom data identifier was deleted. If you delete
a custom data identifier, Amazon Macie doesn't delete it permanently.
Instead, it soft deletes the identifier.


=head2 Description => Str

The custom description of the custom data identifier.


=head2 Id => Str

The unique identifier for the custom data identifier.


=head2 IgnoreWords => ArrayRef[Str|Undef]

An array that lists specific character sequences (ignore words) to
exclude from the results. If the text matched by the regular expression
is the same as any string in this array, Amazon Macie ignores it.
Ignore words are case sensitive.


=head2 Keywords => ArrayRef[Str|Undef]

An array that lists specific character sequences (keywords), one of
which must be within proximity (maximumMatchDistance) of the regular
expression to match. Keywords aren't case sensitive.


=head2 MaximumMatchDistance => Int

The maximum number of characters that can exist between text that
matches the regex pattern and the character sequences specified by the
keywords array. Macie includes or excludes a result based on the
proximity of a keyword to text that matches the regex pattern.


=head2 Name => Str

The custom name of the custom data identifier.


=head2 Regex => Str

The regular expression (I<regex>) that defines the pattern to match.


=head2 Tags => L<Paws::Macie2::TagMap>

A map of key-value pairs that identifies the tags (keys and values)
that are associated with the custom data identifier.


=head2 _request_id => Str


=cut

