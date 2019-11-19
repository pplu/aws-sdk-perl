# Generated from default/object.tt
package Paws::XRay::ValueWithServiceIds;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::XRay::Types qw/XRay_AnnotationValue XRay_ServiceId/;
  has AnnotationValue => (is => 'ro', isa => XRay_AnnotationValue);
  has ServiceIds => (is => 'ro', isa => ArrayRef[XRay_ServiceId]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AnnotationValue' => {
                                      'type' => 'XRay_AnnotationValue',
                                      'class' => 'Paws::XRay::AnnotationValue'
                                    },
               'ServiceIds' => {
                                 'class' => 'Paws::XRay::ServiceId',
                                 'type' => 'ArrayRef[XRay_ServiceId]'
                               }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::ValueWithServiceIds

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::XRay::ValueWithServiceIds object:

  $service_obj->Method(Att1 => { AnnotationValue => $value, ..., ServiceIds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::XRay::ValueWithServiceIds object:

  $result = $service_obj->Method(...);
  $result->Att1->AnnotationValue

=head1 DESCRIPTION

Information about a segment annotation.

=head1 ATTRIBUTES


=head2 AnnotationValue => XRay_AnnotationValue

  Values of the annotation.


=head2 ServiceIds => ArrayRef[XRay_ServiceId]

  Services to which the annotation applies.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

