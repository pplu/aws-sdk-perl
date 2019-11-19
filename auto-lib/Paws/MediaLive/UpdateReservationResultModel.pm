# Generated from default/object.tt
package Paws::MediaLive::UpdateReservationResultModel;
  use Moo;
  use Types::Standard qw//;
  use Paws::MediaLive::Types qw/MediaLive_Reservation/;
  has Reservation => (is => 'ro', isa => MediaLive_Reservation);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Reservation' => 'reservation'
                     },
  'types' => {
               'Reservation' => {
                                  'type' => 'MediaLive_Reservation',
                                  'class' => 'Paws::MediaLive::Reservation'
                                }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::UpdateReservationResultModel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::UpdateReservationResultModel object:

  $service_obj->Method(Att1 => { Reservation => $value, ..., Reservation => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::UpdateReservationResultModel object:

  $result = $service_obj->Method(...);
  $result->Att1->Reservation

=head1 DESCRIPTION

UpdateReservation response

=head1 ATTRIBUTES


=head2 Reservation => MediaLive_Reservation

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

