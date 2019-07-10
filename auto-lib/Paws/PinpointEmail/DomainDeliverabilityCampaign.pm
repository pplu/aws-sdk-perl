package Paws::PinpointEmail::DomainDeliverabilityCampaign;
  use Moose;
  has CampaignId => (is => 'ro', isa => 'Str');
  has DeleteRate => (is => 'ro', isa => 'Num');
  has Esps => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has FirstSeenDateTime => (is => 'ro', isa => 'Str');
  has FromAddress => (is => 'ro', isa => 'Str');
  has ImageUrl => (is => 'ro', isa => 'Str');
  has InboxCount => (is => 'ro', isa => 'Int');
  has LastSeenDateTime => (is => 'ro', isa => 'Str');
  has ProjectedVolume => (is => 'ro', isa => 'Int');
  has ReadDeleteRate => (is => 'ro', isa => 'Num');
  has ReadRate => (is => 'ro', isa => 'Num');
  has SendingIps => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SpamCount => (is => 'ro', isa => 'Int');
  has Subject => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::DomainDeliverabilityCampaign

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointEmail::DomainDeliverabilityCampaign object:

  $service_obj->Method(Att1 => { CampaignId => $value, ..., Subject => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointEmail::DomainDeliverabilityCampaign object:

  $result = $service_obj->Method(...);
  $result->Att1->CampaignId

=head1 DESCRIPTION

An object that contains the deliverability data for a specific
campaign. This data is available for a campaign only if the campaign
sent email by using a domain that the Deliverability dashboard is
enabled for (C<PutDeliverabilityDashboardOption> operation).

=head1 ATTRIBUTES


=head2 CampaignId => Str

  The unique identifier for the campaign. Amazon Pinpoint automatically
generates and assigns this identifier to a campaign. This value is not
the same as the campaign identifier that Amazon Pinpoint assigns to
campaigns that you create and manage by using the Amazon Pinpoint API
or the Amazon Pinpoint console.


=head2 DeleteRate => Num

  The percentage of email messages that were deleted by recipients,
without being opened first. Due to technical limitations, this value
only includes recipients who opened the message by using an email
client that supports images.


=head2 Esps => ArrayRef[Str|Undef]

  The major email providers who handled the email message.


=head2 FirstSeenDateTime => Str

  The first time, in Unix time format, when the email message was
delivered to any recipient's inbox. This value can help you determine
how long it took for a campaign to deliver an email message.


=head2 FromAddress => Str

  The verified email address that the email message was sent from.


=head2 ImageUrl => Str

  The URL of an image that contains a snapshot of the email message that
was sent.


=head2 InboxCount => Int

  The number of email messages that were delivered to recipientsE<rsquo>
inboxes.


=head2 LastSeenDateTime => Str

  The last time, in Unix time format, when the email message was
delivered to any recipient's inbox. This value can help you determine
how long it took for a campaign to deliver an email message.


=head2 ProjectedVolume => Int

  The projected number of recipients that the email message was sent to.


=head2 ReadDeleteRate => Num

  The percentage of email messages that were opened and then deleted by
recipients. Due to technical limitations, this value only includes
recipients who opened the message by using an email client that
supports images.


=head2 ReadRate => Num

  The percentage of email messages that were opened by recipients. Due to
technical limitations, this value only includes recipients who opened
the message by using an email client that supports images.


=head2 SendingIps => ArrayRef[Str|Undef]

  The IP addresses that were used to send the email message.


=head2 SpamCount => Int

  The number of email messages that were delivered to recipients' spam or
junk mail folders.


=head2 Subject => Str

  The subject line, or title, of the email message.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

