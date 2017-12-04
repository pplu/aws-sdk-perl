package Paws::WorkDocs::NotificationOptions;
  use Moose;
  has EmailMessage => (is => 'ro', isa => 'Str');
  has SendEmail => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::NotificationOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkDocs::NotificationOptions object:

  $service_obj->Method(Att1 => { EmailMessage => $value, ..., SendEmail => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkDocs::NotificationOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->EmailMessage

=head1 DESCRIPTION

Set of options which defines notification preferences of given action.

=head1 ATTRIBUTES


=head2 EmailMessage => Str

  Text value to be included in the email body.


=head2 SendEmail => Bool

  Boolean value to indicate an email notification should be sent to the
receipients.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

