package Paws::SES::ExtensionField;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::ExtensionField

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::ExtensionField object:

  $service_obj->Method(Att1 => { Name => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::ExtensionField object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Additional X-headers to include in the Delivery Status Notification
(DSN) when an email that Amazon SES receives on your behalf bounces.

For information about receiving email through Amazon SES, see the
Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  The name of the header to add. Must be between 1 and 50 characters,
inclusive, and consist of alphanumeric (a-z, A-Z, 0-9) characters and
dashes only.


=head2 B<REQUIRED> Value => Str

  The value of the header to add. Must be less than 2048 characters, and
must not contain newline characters ("\r" or "\n").



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

