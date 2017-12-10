package Paws::XRay::FaultStatistics;
  use Moose;
  has OtherCount => (is => 'ro', isa => 'Int');
  has TotalCount => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::FaultStatistics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::XRay::FaultStatistics object:

  $service_obj->Method(Att1 => { OtherCount => $value, ..., TotalCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::XRay::FaultStatistics object:

  $result = $service_obj->Method(...);
  $result->Att1->OtherCount

=head1 DESCRIPTION

Information about requests that failed with a 5xx Server Error status
code.

=head1 ATTRIBUTES


=head2 OtherCount => Int

  The number of requests that failed with untracked 5xx Server Error
status codes.


=head2 TotalCount => Int

  The total number of requests that failed with a 5xx Server Error status
code.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

