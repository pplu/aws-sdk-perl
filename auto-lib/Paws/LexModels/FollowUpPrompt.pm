package Paws::LexModels::FollowUpPrompt;
  use Moose;
  has Prompt => (is => 'ro', isa => 'Paws::LexModels::Prompt', request_name => 'prompt', traits => ['NameInRequest'], required => 1);
  has RejectionStatement => (is => 'ro', isa => 'Paws::LexModels::Statement', request_name => 'rejectionStatement', traits => ['NameInRequest'], required => 1);
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


=head2 B<REQUIRED> Prompt => L<Paws::LexModels::Prompt>

  Prompts for information from the user.


=head2 B<REQUIRED> RejectionStatement => L<Paws::LexModels::Statement>

  If the user answers "no" to the question defined in the C<prompt>
field, Amazon Lex responds with this statement to acknowledge that the
intent was canceled.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

