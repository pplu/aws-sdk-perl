
package Paws::LexModels::GetBuiltinIntentResponse;
  use Moose;
  has Signature => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'signature');
  has Slots => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::BuiltinIntentSlot]', traits => ['NameInRequest'], request_name => 'slots');
  has SupportedLocales => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'supportedLocales');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetBuiltinIntentResponse

=head1 ATTRIBUTES


=head2 Signature => Str

The unique identifier for a built-in intent.


=head2 Slots => ArrayRef[L<Paws::LexModels::BuiltinIntentSlot>]

An array of C<BuiltinIntentSlot> objects, one entry for each slot type
in the intent.


=head2 SupportedLocales => ArrayRef[Str|Undef]

A list of locales that the intent supports.


=head2 _request_id => Str


=cut

