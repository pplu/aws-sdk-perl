package Paws::Connect::UserPhoneConfig;
  use Moose;
  has AfterContactWorkTimeLimit => (is => 'ro', isa => 'Int');
  has AutoAccept => (is => 'ro', isa => 'Bool');
  has DeskPhoneNumber => (is => 'ro', isa => 'Str');
  has PhoneType => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UserPhoneConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::UserPhoneConfig object:

  $service_obj->Method(Att1 => { AfterContactWorkTimeLimit => $value, ..., PhoneType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::UserPhoneConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->AfterContactWorkTimeLimit

=head1 DESCRIPTION

Contains information about the phone configuration settings for a user.

=head1 ATTRIBUTES


=head2 AfterContactWorkTimeLimit => Int

  The After Call Work (ACW) timeout setting, in seconds.


=head2 AutoAccept => Bool

  The Auto accept setting.


=head2 DeskPhoneNumber => Str

  The phone number for the user's desk phone.


=head2 B<REQUIRED> PhoneType => Str

  The phone type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

