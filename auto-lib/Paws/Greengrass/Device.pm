package Paws::Greengrass::Device;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has SyncShadow => (is => 'ro', isa => 'Bool');
  has ThingArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::Device

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::Device object:

  $service_obj->Method(Att1 => { CertificateArn => $value, ..., ThingArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::Device object:

  $result = $service_obj->Method(...);
  $result->Att1->CertificateArn

=head1 DESCRIPTION

Information on a Device

=head1 ATTRIBUTES


=head2 CertificateArn => Str

  Certificate arn of the device.


=head2 Id => Str

  Element Id for this entry in the list.


=head2 SyncShadow => Bool

  If true, the local shadow value automatically syncs with the cloud's
shadow state.


=head2 ThingArn => Str

  Thing arn of the device.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

