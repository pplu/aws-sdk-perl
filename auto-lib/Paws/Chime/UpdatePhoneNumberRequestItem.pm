package Paws::Chime::UpdatePhoneNumberRequestItem;
  use Moose;
  has CallingName => (is => 'ro', isa => 'Str');
  has PhoneNumberId => (is => 'ro', isa => 'Str', required => 1);
  has ProductType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::UpdatePhoneNumberRequestItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::UpdatePhoneNumberRequestItem object:

  $service_obj->Method(Att1 => { CallingName => $value, ..., ProductType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::UpdatePhoneNumberRequestItem object:

  $result = $service_obj->Method(...);
  $result->Att1->CallingName

=head1 DESCRIPTION

The phone number ID, product type, or calling name fields to update,
used with the BatchUpdatePhoneNumber and UpdatePhoneNumber actions.

=head1 ATTRIBUTES


=head2 CallingName => Str

  The outbound calling name to update.


=head2 B<REQUIRED> PhoneNumberId => Str

  The phone number ID to update.


=head2 ProductType => Str

  The product type to update.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

