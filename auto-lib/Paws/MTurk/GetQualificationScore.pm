
package Paws::MTurk::GetQualificationScore;
  use Moose;
  has QualificationTypeId => (is => 'ro', isa => 'Str', required => 1);
  has WorkerId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetQualificationScore');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MTurk::GetQualificationScoreResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::GetQualificationScore - Arguments for method GetQualificationScore on Paws::MTurk

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetQualificationScore on the 
Amazon Mechanical Turk service. Use the attributes of this class
as arguments to method GetQualificationScore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetQualificationScore.

As an example:

  $service_obj->GetQualificationScore(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> QualificationTypeId => Str

The ID of the QualificationType.



=head2 B<REQUIRED> WorkerId => Str

The ID of the Worker whose Qualification is being updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetQualificationScore in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

