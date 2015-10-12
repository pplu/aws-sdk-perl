
package Paws::Inspector::AttachAssessmentAndRulesPackage;
  use Moose;
  has assessmentArn => (is => 'ro', isa => 'Str');
  has rulesPackageArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AttachAssessmentAndRulesPackage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector::AttachAssessmentAndRulesPackageResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::AttachAssessmentAndRulesPackage - Arguments for method AttachAssessmentAndRulesPackage on Paws::Inspector

=head1 DESCRIPTION

This class represents the parameters used for calling the method AttachAssessmentAndRulesPackage on the 
Amazon Inspector service. Use the attributes of this class
as arguments to method AttachAssessmentAndRulesPackage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AttachAssessmentAndRulesPackage.

As an example:

  $service_obj->AttachAssessmentAndRulesPackage(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 assessmentArn => Str

  The ARN specifying the assessment to which you want to attach a rules
package.

=head2 rulesPackageArn => Str

  The ARN specifying the rules package that you want to attach to the
assessment.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AttachAssessmentAndRulesPackage in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

