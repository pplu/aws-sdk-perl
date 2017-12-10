package Paws::Inspector::AssessmentRunStateChange;
  use Moose;
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest'], required => 1);
  has StateChangedAt => (is => 'ro', isa => 'Str', request_name => 'stateChangedAt', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::AssessmentRunStateChange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::AssessmentRunStateChange object:

  $service_obj->Method(Att1 => { State => $value, ..., StateChangedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::AssessmentRunStateChange object:

  $result = $service_obj->Method(...);
  $result->Att1->State

=head1 DESCRIPTION

Used as one of the elements of the AssessmentRun data type.

=head1 ATTRIBUTES


=head2 B<REQUIRED> State => Str

  The assessment run state.


=head2 B<REQUIRED> StateChangedAt => Str

  The last time the assessment run state changed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

