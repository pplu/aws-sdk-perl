# Generated by default/object.tt
package Paws::MediaConvert::Hdr10Plus;
  use Moose;
  has MasteringMonitorNits => (is => 'ro', isa => 'Int', request_name => 'masteringMonitorNits', traits => ['NameInRequest']);
  has TargetMonitorNits => (is => 'ro', isa => 'Int', request_name => 'targetMonitorNits', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::Hdr10Plus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::Hdr10Plus object:

  $service_obj->Method(Att1 => { MasteringMonitorNits => $value, ..., TargetMonitorNits => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::Hdr10Plus object:

  $result = $service_obj->Method(...);
  $result->Att1->MasteringMonitorNits

=head1 DESCRIPTION

Setting for HDR10+ metadata insertion

=head1 ATTRIBUTES


=head2 MasteringMonitorNits => Int

Specify the HDR10+ mastering display normalized peak luminance, in
nits. This is the normalized actual peak luminance of the mastering
display, as defined by ST 2094-40.


=head2 TargetMonitorNits => Int

Specify the HDR10+ target display nominal peak luminance, in nits. This
is the nominal maximum luminance of the target display as defined by ST
2094-40.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

