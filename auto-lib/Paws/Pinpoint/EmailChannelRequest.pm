package Paws::Pinpoint::EmailChannelRequest;
  use Moose;
  has ConfigurationSet => (is => 'ro', isa => 'Str');
  has Enabled => (is => 'ro', isa => 'Bool');
  has FromAddress => (is => 'ro', isa => 'Str');
  has Identity => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::EmailChannelRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::EmailChannelRequest object:

  $service_obj->Method(Att1 => { ConfigurationSet => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::EmailChannelRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->ConfigurationSet

=head1 DESCRIPTION

Email Channel Request

=head1 ATTRIBUTES


=head2 ConfigurationSet => Str

  The configuration set that you want to use when you send email using
the Pinpoint Email API.


=head2 Enabled => Bool

  If the channel is enabled for sending messages.


=head2 FromAddress => Str

  The email address used to send emails from.


=head2 Identity => Str

  The ARN of an identity verified with SES.


=head2 RoleArn => Str

  The ARN of an IAM Role used to submit events to Mobile Analytics' event
ingestion service



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

