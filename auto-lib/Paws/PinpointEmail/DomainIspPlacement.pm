package Paws::PinpointEmail::DomainIspPlacement;
  use Moose;
  has InboxPercentage => (is => 'ro', isa => 'Num');
  has InboxRawCount => (is => 'ro', isa => 'Int');
  has IspName => (is => 'ro', isa => 'Str');
  has SpamPercentage => (is => 'ro', isa => 'Num');
  has SpamRawCount => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::DomainIspPlacement

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointEmail::DomainIspPlacement object:

  $service_obj->Method(Att1 => { InboxPercentage => $value, ..., SpamRawCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointEmail::DomainIspPlacement object:

  $result = $service_obj->Method(...);
  $result->Att1->InboxPercentage

=head1 DESCRIPTION

An object that contains inbox placement data for email sent from one of
your email domains to a specific email provider.

=head1 ATTRIBUTES


=head2 InboxPercentage => Num

  The percentage of messages that were sent from the selected domain to
the specified email provider that arrived in recipients' inboxes.


=head2 InboxRawCount => Int

  The total number of messages that were sent from the selected domain to
the specified email provider that arrived in recipients' inboxes.


=head2 IspName => Str

  The name of the email provider that the inbox placement data applies
to.


=head2 SpamPercentage => Num

  The percentage of messages that were sent from the selected domain to
the specified email provider that arrived in recipients' spam or junk
mail folders.


=head2 SpamRawCount => Int

  The total number of messages that were sent from the selected domain to
the specified email provider that arrived in recipients' spam or junk
mail folders.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

