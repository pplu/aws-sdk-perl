package Paws::MediaLive::Scte35DeliveryRestrictions;
  use Moose;
  has ArchiveAllowedFlag => (is => 'ro', isa => 'Str', request_name => 'archiveAllowedFlag', traits => ['NameInRequest'], required => 1);
  has DeviceRestrictions => (is => 'ro', isa => 'Str', request_name => 'deviceRestrictions', traits => ['NameInRequest'], required => 1);
  has NoRegionalBlackoutFlag => (is => 'ro', isa => 'Str', request_name => 'noRegionalBlackoutFlag', traits => ['NameInRequest'], required => 1);
  has WebDeliveryAllowedFlag => (is => 'ro', isa => 'Str', request_name => 'webDeliveryAllowedFlag', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::Scte35DeliveryRestrictions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::Scte35DeliveryRestrictions object:

  $service_obj->Method(Att1 => { ArchiveAllowedFlag => $value, ..., WebDeliveryAllowedFlag => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::Scte35DeliveryRestrictions object:

  $result = $service_obj->Method(...);
  $result->Att1->ArchiveAllowedFlag

=head1 DESCRIPTION

Corresponds to SCTE-35 delivery_not_restricted_flag parameter. To
declare delivery restrictions, include this element and its four
"restriction" flags. To declare that there are no restrictions, omit
this element.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ArchiveAllowedFlag => Str

  Corresponds to SCTE-35 archive_allowed_flag.


=head2 B<REQUIRED> DeviceRestrictions => Str

  Corresponds to SCTE-35 device_restrictions parameter.


=head2 B<REQUIRED> NoRegionalBlackoutFlag => Str

  Corresponds to SCTE-35 no_regional_blackout_flag parameter.


=head2 B<REQUIRED> WebDeliveryAllowedFlag => Str

  Corresponds to SCTE-35 web_delivery_allowed_flag parameter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

