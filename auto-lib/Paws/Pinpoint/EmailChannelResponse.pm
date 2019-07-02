
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

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::EmailChannelResponse

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


=head2 _request_id => Str


=cut

