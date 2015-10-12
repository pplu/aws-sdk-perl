package Paws::SimpleWorkflow::RecordMarkerDecisionAttributes;
  use Moose;
  has details => (is => 'ro', isa => 'Str');
  has markerName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::RecordMarkerDecisionAttributes

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::RecordMarkerDecisionAttributes object:

  $service_obj->Method(Att1 => { details => $value, ..., markerName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::RecordMarkerDecisionAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->details

=head1 ATTRIBUTES

=head2 details => Str

  I<Optional.> details of the marker.

=head2 B<REQUIRED> markerName => Str

  B<Required.> The name of the marker.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

