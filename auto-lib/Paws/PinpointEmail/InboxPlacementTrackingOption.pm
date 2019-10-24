# Generated from default/object.tt
package Paws::PinpointEmail::InboxPlacementTrackingOption;
  use Moo;
  use Types::Standard qw/Bool ArrayRef Undef Str/;
  use Paws::PinpointEmail::Types qw//;
  has Global => (is => 'ro', isa => Bool);
  has TrackedIsps => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Global' => {
                             'type' => 'Bool'
                           },
               'TrackedIsps' => {
                                  'type' => 'ArrayRef[Str|Undef]'
                                }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::InboxPlacementTrackingOption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointEmail::InboxPlacementTrackingOption object:

  $service_obj->Method(Att1 => { Global => $value, ..., TrackedIsps => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointEmail::InboxPlacementTrackingOption object:

  $result = $service_obj->Method(...);
  $result->Att1->Global

=head1 DESCRIPTION

An object that contains information about the inbox placement data
settings for a verified domain thatE<rsquo>s associated with your AWS
account. This data is available only if you enabled the Deliverability
dashboard for the domain (C<PutDeliverabilityDashboardOption>
operation).

=head1 ATTRIBUTES


=head2 Global => Bool

  Specifies whether inbox placement data is being tracked for the domain.


=head2 TrackedIsps => ArrayRef[Str|Undef]

  An array of strings, one for each major email provider that the inbox
placement data applies to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

