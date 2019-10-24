# Generated from default/object.tt
package Paws::Chime::Origination;
  use Moo;
  use Types::Standard qw/Bool ArrayRef/;
  use Paws::Chime::Types qw/Chime_OriginationRoute/;
  has Disabled => (is => 'ro', isa => Bool);
  has Routes => (is => 'ro', isa => ArrayRef[Chime_OriginationRoute]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Disabled' => {
                               'type' => 'Bool'
                             },
               'Routes' => {
                             'class' => 'Paws::Chime::OriginationRoute',
                             'type' => 'ArrayRef[Chime_OriginationRoute]'
                           }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::Origination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::Origination object:

  $service_obj->Method(Att1 => { Disabled => $value, ..., Routes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::Origination object:

  $result = $service_obj->Method(...);
  $result->Att1->Disabled

=head1 DESCRIPTION

Origination settings enable your SIP hosts to receive inbound calls
using your Amazon Chime Voice Connector.

=head1 ATTRIBUTES


=head2 Disabled => Bool

  When origination settings are disabled, inbound calls are not enabled
for your Amazon Chime Voice Connector.


=head2 Routes => ArrayRef[Chime_OriginationRoute]

  The call distribution properties defined for your SIP hosts. Valid
range: Minimum value of 1. Maximum value of 20.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

