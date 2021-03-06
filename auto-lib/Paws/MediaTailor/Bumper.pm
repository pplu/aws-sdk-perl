# Generated by default/object.tt
package Paws::MediaTailor::Bumper;
  use Moose;
  has EndUrl => (is => 'ro', isa => 'Str');
  has StartUrl => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::Bumper

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaTailor::Bumper object:

  $service_obj->Method(Att1 => { EndUrl => $value, ..., StartUrl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaTailor::Bumper object:

  $result = $service_obj->Method(...);
  $result->Att1->EndUrl

=head1 DESCRIPTION

The configuration for bumpers. Bumpers are short audio or video clips
that play at the start or before the end of an ad break. To learn more
about bumpers, see Bumpers
(https://docs.aws.amazon.com/mediatailor/latest/ug/bumpers.html).

=head1 ATTRIBUTES


=head2 EndUrl => Str

The URL for the end bumper asset.


=head2 StartUrl => Str

The URL for the start bumper asset.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

