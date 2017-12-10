package Paws::LexModels::UtteranceList;
  use Moose;
  has BotVersion => (is => 'ro', isa => 'Str', request_name => 'botVersion', traits => ['NameInRequest']);
  has Utterances => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::UtteranceData]', request_name => 'utterances', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::UtteranceList

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModels::UtteranceList object:

  $service_obj->Method(Att1 => { BotVersion => $value, ..., Utterances => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModels::UtteranceList object:

  $result = $service_obj->Method(...);
  $result->Att1->BotVersion

=head1 DESCRIPTION

Provides a list of utterances that have been made to a specific version
of your bot. The list contains a maximum of 100 utterances.

=head1 ATTRIBUTES


=head2 BotVersion => Str

  The version of the bot that processed the list.


=head2 Utterances => ArrayRef[L<Paws::LexModels::UtteranceData>]

  One or more UtteranceData objects that contain information about the
utterances that have been made to a bot. The maximum number of object
is 100.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

