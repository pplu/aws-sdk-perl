package Paws::PinpointEmail::VolumeStatistics;
  use Moose;
  has InboxRawCount => (is => 'ro', isa => 'Int');
  has ProjectedInbox => (is => 'ro', isa => 'Int');
  has ProjectedSpam => (is => 'ro', isa => 'Int');
  has SpamRawCount => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::VolumeStatistics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointEmail::VolumeStatistics object:

  $service_obj->Method(Att1 => { InboxRawCount => $value, ..., SpamRawCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointEmail::VolumeStatistics object:

  $result = $service_obj->Method(...);
  $result->Att1->InboxRawCount

=head1 DESCRIPTION

An object that contains information about the amount of email that was
delivered to recipients.

=head1 ATTRIBUTES


=head2 InboxRawCount => Int

  The total number of emails that arrived in recipients' inboxes.


=head2 ProjectedInbox => Int

  An estimate of the percentage of emails sent from the current domain
that will arrive in recipients' inboxes.


=head2 ProjectedSpam => Int

  An estimate of the percentage of emails sent from the current domain
that will arrive in recipients' spam or junk mail folders.


=head2 SpamRawCount => Int

  The total number of emails that arrived in recipients' spam or junk
mail folders.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

