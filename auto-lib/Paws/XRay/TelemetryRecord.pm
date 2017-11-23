package Paws::XRay::TelemetryRecord;
  use Moose;
  has BackendConnectionErrors => (is => 'ro', isa => 'Paws::XRay::BackendConnectionErrors');
  has SegmentsReceivedCount => (is => 'ro', isa => 'Int');
  has SegmentsRejectedCount => (is => 'ro', isa => 'Int');
  has SegmentsSentCount => (is => 'ro', isa => 'Int');
  has SegmentsSpilloverCount => (is => 'ro', isa => 'Int');
  has Timestamp => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::TelemetryRecord

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::XRay::TelemetryRecord object:

  $service_obj->Method(Att1 => { BackendConnectionErrors => $value, ..., Timestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::XRay::TelemetryRecord object:

  $result = $service_obj->Method(...);
  $result->Att1->BackendConnectionErrors

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 BackendConnectionErrors => L<Paws::XRay::BackendConnectionErrors>

  


=head2 SegmentsReceivedCount => Int

  


=head2 SegmentsRejectedCount => Int

  


=head2 SegmentsSentCount => Int

  


=head2 SegmentsSpilloverCount => Int

  


=head2 B<REQUIRED> Timestamp => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

