package Paws::Pinpoint::CampaignSmsMessage;
  use Moose;
  has Body => (is => 'ro', isa => 'Str');
  has MessageType => (is => 'ro', isa => 'Str');
  has SenderId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::CampaignSmsMessage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::CampaignSmsMessage object:

  $service_obj->Method(Att1 => { Body => $value, ..., SenderId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::CampaignSmsMessage object:

  $result = $service_obj->Method(...);
  $result->Att1->Body

=head1 DESCRIPTION

SMS message configuration.

=head1 ATTRIBUTES


=head2 Body => Str

  The SMS text body.


=head2 MessageType => Str

  Is this is a transactional SMS message, otherwise a promotional
message.


=head2 SenderId => Str

  Sender ID of sent message.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

