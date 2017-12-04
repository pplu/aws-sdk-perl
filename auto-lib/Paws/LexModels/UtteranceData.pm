package Paws::LexModels::UtteranceData;
  use Moose;
  has Count => (is => 'ro', isa => 'Int', request_name => 'count', traits => ['NameInRequest']);
  has DistinctUsers => (is => 'ro', isa => 'Int', request_name => 'distinctUsers', traits => ['NameInRequest']);
  has FirstUtteredDate => (is => 'ro', isa => 'Str', request_name => 'firstUtteredDate', traits => ['NameInRequest']);
  has LastUtteredDate => (is => 'ro', isa => 'Str', request_name => 'lastUtteredDate', traits => ['NameInRequest']);
  has UtteranceString => (is => 'ro', isa => 'Str', request_name => 'utteranceString', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::UtteranceData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModels::UtteranceData object:

  $service_obj->Method(Att1 => { Count => $value, ..., UtteranceString => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModels::UtteranceData object:

  $result = $service_obj->Method(...);
  $result->Att1->Count

=head1 DESCRIPTION

Provides information about a single utterance that was made to your
bot.

=head1 ATTRIBUTES


=head2 Count => Int

  The number of times that the utterance was processed.


=head2 DistinctUsers => Int

  The total number of individuals that used the utterance.


=head2 FirstUtteredDate => Str

  The date that the utterance was first recorded.


=head2 LastUtteredDate => Str

  The date that the utterance was last recorded.


=head2 UtteranceString => Str

  The text that was entered by the user or the text representation of an
audio clip.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

