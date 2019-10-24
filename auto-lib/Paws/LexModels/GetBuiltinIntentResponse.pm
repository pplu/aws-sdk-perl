
package Paws::LexModels::GetBuiltinIntentResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::LexModels::Types qw/LexModels_BuiltinIntentSlot/;
  has Signature => (is => 'ro', isa => Str);
  has Slots => (is => 'ro', isa => ArrayRef[LexModels_BuiltinIntentSlot]);
  has SupportedLocales => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Slots' => {
                            'class' => 'Paws::LexModels::BuiltinIntentSlot',
                            'type' => 'ArrayRef[LexModels_BuiltinIntentSlot]'
                          },
               'Signature' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SupportedLocales' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     }
             },
  'NameInRequest' => {
                       'Slots' => 'slots',
                       'Signature' => 'signature',
                       'SupportedLocales' => 'supportedLocales'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetBuiltinIntentResponse

=head1 ATTRIBUTES


=head2 Signature => Str

The unique identifier for a built-in intent.


=head2 Slots => ArrayRef[LexModels_BuiltinIntentSlot]

An array of C<BuiltinIntentSlot> objects, one entry for each slot type
in the intent.


=head2 SupportedLocales => ArrayRef[Str|Undef]

A list of locales that the intent supports.


=head2 _request_id => Str


=cut

