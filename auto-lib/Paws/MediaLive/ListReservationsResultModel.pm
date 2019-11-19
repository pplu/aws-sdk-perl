# Generated from default/object.tt
package Paws::MediaLive::ListReservationsResultModel;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaLive::Types qw/MediaLive_Reservation/;
  has NextToken => (is => 'ro', isa => Str);
  has Reservations => (is => 'ro', isa => ArrayRef[MediaLive_Reservation]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Reservations' => {
                                   'class' => 'Paws::MediaLive::Reservation',
                                   'type' => 'ArrayRef[MediaLive_Reservation]'
                                 }
             },
  'NameInRequest' => {
                       'Reservations' => 'reservations',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ListReservationsResultModel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::ListReservationsResultModel object:

  $service_obj->Method(Att1 => { NextToken => $value, ..., Reservations => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::ListReservationsResultModel object:

  $result = $service_obj->Method(...);
  $result->Att1->NextToken

=head1 DESCRIPTION

ListReservations response

=head1 ATTRIBUTES


=head2 NextToken => Str

  Token to retrieve the next page of results


=head2 Reservations => ArrayRef[MediaLive_Reservation]

  List of reservations



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

