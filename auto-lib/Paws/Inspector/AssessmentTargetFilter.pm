package Paws::Inspector::AssessmentTargetFilter;
  use Moose;
  has AssessmentTargetNamePattern => (is => 'ro', isa => 'Str', request_name => 'assessmentTargetNamePattern', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::AssessmentTargetFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::AssessmentTargetFilter object:

  $service_obj->Method(Att1 => { AssessmentTargetNamePattern => $value, ..., AssessmentTargetNamePattern => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::AssessmentTargetFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->AssessmentTargetNamePattern

=head1 DESCRIPTION

Used as the request parameter in the ListAssessmentTargets action.

=head1 ATTRIBUTES


=head2 AssessmentTargetNamePattern => Str

  For a record to match a filter, an explicit value or a string that
contains a wildcard that is specified for this data type property must
match the value of the B<assessmentTargetName> property of the
AssessmentTarget data type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

