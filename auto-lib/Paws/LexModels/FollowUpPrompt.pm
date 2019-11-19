# Generated from default/object.tt
package Paws::LexModels::FollowUpPrompt;
  use Moo;
  use Types::Standard qw//;
  use Paws::LexModels::Types qw/LexModels_Statement LexModels_Prompt/;
  has Prompt => (is => 'ro', isa => LexModels_Prompt, required => 1);
  has RejectionStatement => (is => 'ro', isa => LexModels_Statement, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Prompt' => {
                             'type' => 'LexModels_Prompt',
                             'class' => 'Paws::LexModels::Prompt'
                           },
               'RejectionStatement' => {
                                         'class' => 'Paws::LexModels::Statement',
                                         'type' => 'LexModels_Statement'
                                       }
             },
  'IsRequired' => {
                    'Prompt' => 1,
                    'RejectionStatement' => 1
                  },
  'NameInRequest' => {
                       'Prompt' => 'prompt',
                       'RejectionStatement' => 'rejectionStatement'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::FollowUpPrompt

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModels::FollowUpPrompt object:

  $service_obj->Method(Att1 => { Prompt => $value, ..., RejectionStatement => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModels::FollowUpPrompt object:

  $result = $service_obj->Method(...);
  $result->Att1->Prompt

=head1 DESCRIPTION

A prompt for additional activity after an intent is fulfilled. For
example, after the C<OrderPizza> intent is fulfilled, you might prompt
the user to find out whether the user wants to order drinks.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Prompt => LexModels_Prompt

  Prompts for information from the user.


=head2 B<REQUIRED> RejectionStatement => LexModels_Statement

  If the user answers "no" to the question defined in the C<prompt>
field, Amazon Lex responds with this statement to acknowledge that the
intent was canceled.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

