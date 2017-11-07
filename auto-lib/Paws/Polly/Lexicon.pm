package Paws::Polly::Lexicon;
  use Moose;
  has Content => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Polly::Lexicon

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Polly::Lexicon object:

  $service_obj->Method(Att1 => { Content => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Polly::Lexicon object:

  $result = $service_obj->Method(...);
  $result->Att1->Content

=head1 DESCRIPTION

Provides lexicon name and lexicon content in string format. For more
information, see Pronunciation Lexicon Specification (PLS) Version 1.0
(https://www.w3.org/TR/pronunciation-lexicon/).

=head1 ATTRIBUTES


=head2 Content => Str

  Lexicon content in string format. The content of a lexicon must be in
PLS format.


=head2 Name => Str

  Name of the lexicon.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Polly>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

