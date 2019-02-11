package Paws::PinpointEmail::PlacementStatistics;
  use Moose;
  has DkimPercentage => (is => 'ro', isa => 'Num');
  has InboxPercentage => (is => 'ro', isa => 'Num');
  has MissingPercentage => (is => 'ro', isa => 'Num');
  has SpamPercentage => (is => 'ro', isa => 'Num');
  has SpfPercentage => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::PlacementStatistics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointEmail::PlacementStatistics object:

  $service_obj->Method(Att1 => { DkimPercentage => $value, ..., SpfPercentage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointEmail::PlacementStatistics object:

  $result = $service_obj->Method(...);
  $result->Att1->DkimPercentage

=head1 DESCRIPTION

An object that contains inbox placement data for an email provider.

=head1 ATTRIBUTES


=head2 DkimPercentage => Num

  The percentage of emails that were authenticated by using DomainKeys
Identified Mail (DKIM) during the predictive inbox placement test.


=head2 InboxPercentage => Num

  The percentage of emails that arrived in recipients' inboxes during the
predictive inbox placement test.


=head2 MissingPercentage => Num

  The percentage of emails that didn't arrive in recipients' inboxes at
all during the predictive inbox placement test.


=head2 SpamPercentage => Num

  The percentage of emails that arrived in recipients' spam or junk mail
folders during the predictive inbox placement test.


=head2 SpfPercentage => Num

  The percentage of emails that were authenticated by using Sender Policy
Framework (SPF) during the predictive inbox placement test.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

