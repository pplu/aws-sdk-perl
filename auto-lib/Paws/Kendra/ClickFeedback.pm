package Paws::Kendra::ClickFeedback;
  use Moose;
  has ClickTime => (is => 'ro', isa => 'Str', required => 1);
  has ResultId => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::ClickFeedback

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::ClickFeedback object:

  $service_obj->Method(Att1 => { ClickTime => $value, ..., ResultId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::ClickFeedback object:

  $result = $service_obj->Method(...);
  $result->Att1->ClickTime

=head1 DESCRIPTION

Gathers information about when a particular result was clicked by a
user. Your application uses the SubmitFeedback operation to provide
click information.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClickTime => Str

  The Unix timestamp of the data and time that the result was clicked.


=head2 B<REQUIRED> ResultId => Str

  The unique identifier of the search result that was clicked.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

