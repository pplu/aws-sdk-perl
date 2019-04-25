
package Paws::Inspector::UpdateAssessmentTarget;
  use Moose;
  has AssessmentTargetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assessmentTargetArn' , required => 1);
  has AssessmentTargetName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assessmentTargetName' , required => 1);
  has ResourceGroupArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceGroupArn' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAssessmentTarget');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::UpdateAssessmentTarget - Arguments for method UpdateAssessmentTarget on L<Paws::Inspector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAssessmentTarget on the
L<Amazon Inspector|Paws::Inspector> service. Use the attributes of this class
as arguments to method UpdateAssessmentTarget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAssessmentTarget.

=head1 SYNOPSIS

    my $inspector = Paws->service('Inspector');
    # Update assessment target
    # Updates the assessment target that is specified by the ARN of the
    # assessment target.
    $inspector->UpdateAssessmentTarget(
      {
        'AssessmentTargetArn' =>
          'arn:aws:inspector:us-west-2:123456789012:target/0-nvgVhaxX',
        'AssessmentTargetName' => 'Example',
        'ResourceGroupArn' =>
          'arn:aws:inspector:us-west-2:123456789012:resourcegroup/0-yNbgL5Pt'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector/UpdateAssessmentTarget>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentTargetArn => Str

The ARN of the assessment target that you want to update.



=head2 B<REQUIRED> AssessmentTargetName => Str

The name of the assessment target that you want to update.



=head2 ResourceGroupArn => Str

The ARN of the resource group that is used to specify the new resource
group to associate with the assessment target.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAssessmentTarget in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

