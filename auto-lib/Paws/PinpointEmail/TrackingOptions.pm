package Paws::PinpointEmail::TrackingOptions;
  use Moose;
  has CustomRedirectDomain => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::TrackingOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointEmail::TrackingOptions object:

  $service_obj->Method(Att1 => { CustomRedirectDomain => $value, ..., CustomRedirectDomain => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointEmail::TrackingOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomRedirectDomain

=head1 DESCRIPTION

An object that defines the tracking options for a configuration set.
When you use Amazon Pinpoint to send an email, it contains an invisible
image that's used to track when recipients open your email. If your
email contains links, those links are changed slightly in order to
track when recipients click them.

These images and links include references to a domain operated by AWS.
You can optionally configure Amazon Pinpoint to use a domain that you
operate for these images and links.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CustomRedirectDomain => Str

  The domain that you want to use for tracking open and click events.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

