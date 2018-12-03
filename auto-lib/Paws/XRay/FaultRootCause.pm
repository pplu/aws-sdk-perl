package Paws::XRay::FaultRootCause;
  use Moose;
  has Services => (is => 'ro', isa => 'ArrayRef[Paws::XRay::FaultRootCauseService]');
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


=head2 Services => ArrayRef[L<Paws::XRay::FaultRootCauseService>]

  A list of corresponding services. A service identifies a segment and it
contains a name, account ID, type, and inferred flag.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

