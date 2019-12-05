package Paws::Kendra::TextWithHighlights;
  use Moose;
  has Highlights => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::Highlight]');
  has Text => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::TextWithHighlights

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::TextWithHighlights object:

  $service_obj->Method(Att1 => { Highlights => $value, ..., Text => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::TextWithHighlights object:

  $result = $service_obj->Method(...);
  $result->Att1->Highlights

=head1 DESCRIPTION

Provides text and information about where to highlight the text.

=head1 ATTRIBUTES


=head2 Highlights => ArrayRef[L<Paws::Kendra::Highlight>]

  The beginning and end of the text that should be highlighted.


=head2 Text => Str

  The text to display to the user.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

