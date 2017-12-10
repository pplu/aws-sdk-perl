package Paws::SES::Message;
  use Moose;
  has Body => (is => 'ro', isa => 'Paws::SES::Body', required => 1);
  has Subject => (is => 'ro', isa => 'Paws::SES::Content', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::Message

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::Message object:

  $service_obj->Method(Att1 => { Body => $value, ..., Subject => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::Message object:

  $result = $service_obj->Method(...);
  $result->Att1->Body

=head1 DESCRIPTION

Represents the message to be sent, composed of a subject and a body.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Body => L<Paws::SES::Body>

  The message body.


=head2 B<REQUIRED> Subject => L<Paws::SES::Content>

  The subject of the message: A short summary of the content, which will
appear in the recipient's inbox.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

