package Paws::Pinpoint::EmailChannelResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str');
  has ConfigurationSet => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has Enabled => (is => 'ro', isa => 'Bool');
  has FromAddress => (is => 'ro', isa => 'Str');
  has HasCredential => (is => 'ro', isa => 'Bool');
  has Id => (is => 'ro', isa => 'Str');
  has Identity => (is => 'ro', isa => 'Str');
  has IsArchived => (is => 'ro', isa => 'Bool');
  has LastModifiedBy => (is => 'ro', isa => 'Str');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has MessagesPerSecond => (is => 'ro', isa => 'Int');
  has Platform => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::EmailChannelResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::EmailChannelResponse object:

  $service_obj->Method(Att1 => { ApplicationId => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::EmailChannelResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationId

=head1 DESCRIPTION

Provides information about the status and settings of the email channel
for an application.

=head1 ATTRIBUTES


=head2 ApplicationId => Str

  The unique identifier for the application that the email channel
applies to.


=head2 ConfigurationSet => Str

  The configuration set that's applied to email that's sent through the
channel by using the Amazon Pinpoint Email API.


=head2 CreationDate => Str

  The date and time, in ISO 8601 format, when the email channel was
enabled.


=head2 Enabled => Bool

  Specifies whether the email channel is enabled for the application.


=head2 FromAddress => Str

  The verified email address that you send email from when you send email
through the channel.


=head2 HasCredential => Bool

  (Not used) This property is retained only for backward compatibility.


=head2 Id => Str

  (Deprecated) An identifier for the email channel. This property is
retained only for backward compatibility.


=head2 Identity => Str

  The Amazon Resource Name (ARN) of the identity, verified with Amazon
Simple Email Service (Amazon SES), that you use when you send email
through the channel.


=head2 IsArchived => Bool

  Specifies whether the email channel is archived.


=head2 LastModifiedBy => Str

  The user who last modified the email channel.


=head2 LastModifiedDate => Str

  The date and time, in ISO 8601 format, when the email channel was last
modified.


=head2 MessagesPerSecond => Int

  The maximum number of emails that you can send through the channel each
second.


=head2 B<REQUIRED> Platform => Str

  The type of messaging or notification platform for the channel. For the
email channel, this value is EMAIL.


=head2 RoleArn => Str

  The ARN of the AWS Identity and Access Management (IAM) role that
Amazon Pinpoint uses to submit email-related event data for the
channel.


=head2 Version => Int

  The current version of the email channel.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

