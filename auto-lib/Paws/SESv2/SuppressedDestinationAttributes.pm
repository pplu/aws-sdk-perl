package Paws::SESv2::SuppressedDestinationAttributes;
  use Moose;
  has FeedbackId => (is => 'ro', isa => 'Str');
  has MessageId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::SuppressedDestinationAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SESv2::SuppressedDestinationAttributes object:

  $service_obj->Method(Att1 => { FeedbackId => $value, ..., MessageId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SESv2::SuppressedDestinationAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->FeedbackId

=head1 DESCRIPTION

An object containing additional attributes related to a suppressed
destination.

=head1 ATTRIBUTES


=head2 FeedbackId => Str

  A unique identifier of the suppression cause.


=head2 MessageId => Str

  A unique identifier of the message that caused the suppression of the
email destination.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

