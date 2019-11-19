# Generated from default/object.tt
package Paws::IoT1ClickDevices::Empty;
  use Moo;
  use Types::Standard qw//;
  use Paws::IoT1ClickDevices::Types qw//;

    sub params_map {
    our $Params_map ||= {}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickDevices::Empty

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT1ClickDevices::Empty object:

  $service_obj->Method(Att1 => {  => $value, ...,  => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT1ClickDevices::Empty object:

  $result = $service_obj->Method(...);
  $result->Att1->

=head1 DESCRIPTION

On success, an empty object is returned.

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT1ClickDevices>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

