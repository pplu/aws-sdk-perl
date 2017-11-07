package Paws::SES::AddHeaderAction;
  use Moose;
  has HeaderName => (is => 'ro', isa => 'Str', required => 1);
  has HeaderValue => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::AddHeaderAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::AddHeaderAction object:

  $service_obj->Method(Att1 => { HeaderName => $value, ..., HeaderValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::AddHeaderAction object:

  $result = $service_obj->Method(...);
  $result->Att1->HeaderName

=head1 DESCRIPTION

When included in a receipt rule, this action adds a header to the
received email.

For information about adding a header using a receipt rule, see the
Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-add-header.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> HeaderName => Str

  The name of the header to add. Must be between 1 and 50 characters,
inclusive, and consist of alphanumeric (a-z, A-Z, 0-9) characters and
dashes only.


=head2 B<REQUIRED> HeaderValue => Str

  Must be less than 2048 characters, and must not contain newline
characters ("\r" or "\n").



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

