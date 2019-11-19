# Generated from default/object.tt
package Paws::XRay::FaultRootCause;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::XRay::Types qw/XRay_FaultRootCauseService/;
  has Services => (is => 'ro', isa => ArrayRef[XRay_FaultRootCauseService]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Services' => {
                               'type' => 'ArrayRef[XRay_FaultRootCauseService]',
                               'class' => 'Paws::XRay::FaultRootCauseService'
                             }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::FaultRootCause

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::XRay::FaultRootCause object:

  $service_obj->Method(Att1 => { Services => $value, ..., Services => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::XRay::FaultRootCause object:

  $result = $service_obj->Method(...);
  $result->Att1->Services

=head1 DESCRIPTION

The root cause information for a trace summary fault.

=head1 ATTRIBUTES


=head2 Services => ArrayRef[XRay_FaultRootCauseService]

  A list of corresponding services. A service identifies a segment and it
contains a name, account ID, type, and inferred flag.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

