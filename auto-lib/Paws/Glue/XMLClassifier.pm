package Paws::Glue::XMLClassifier;
  use Moose;
  has Classification => (is => 'ro', isa => 'Str', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str');
  has LastUpdated => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RowTag => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::XMLClassifier

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::XMLClassifier object:

  $service_obj->Method(Att1 => { Classification => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::XMLClassifier object:

  $result = $service_obj->Method(...);
  $result->Att1->Classification

=head1 DESCRIPTION

A classifier for C<XML> content.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Classification => Str

  An identifier of the data format that the classifier matches.


=head2 CreationTime => Str

  The time this classifier was registered.


=head2 LastUpdated => Str

  The time this classifier was last updated.


=head2 B<REQUIRED> Name => Str

  The name of the classifier.


=head2 RowTag => Str

  The XML tag designating the element that contains each record in an XML
document being parsed. Note that this cannot identify a self-closing
element (closed by C</E<gt>>). An empty row element that contains only
attributes can be parsed as long as it ends with a closing tag (for
example, C<E<lt>row item_a="A" item_b="B"E<gt>E<lt>/rowE<gt>> is okay,
but C<E<lt>row item_a="A" item_b="B" /E<gt>> is not).


=head2 Version => Int

  The version of this classifier.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

