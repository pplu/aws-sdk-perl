package Paws::SESv2::SuppressionOptions;
  use Moose;
  has SuppressedReasons => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::SuppressionOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SESv2::SuppressionOptions object:

  $service_obj->Method(Att1 => { SuppressedReasons => $value, ..., SuppressedReasons => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SESv2::SuppressionOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->SuppressedReasons

=head1 DESCRIPTION

An object that contains information about the suppression list
preferences for your account.

=head1 ATTRIBUTES


=head2 SuppressedReasons => ArrayRef[Str|Undef]

  A list that contains the reasons that email addresses are automatically
added to the suppression list for your account. This list can contain
any or all of the following:

=over

=item *

C<COMPLAINT> E<ndash> Amazon SES adds an email address to the
suppression list for your account when a message sent to that address
results in a complaint.

=item *

C<BOUNCE> E<ndash> Amazon SES adds an email address to the suppression
list for your account when a message sent to that address results in a
hard bounce.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

