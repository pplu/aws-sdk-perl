
package Paws::Inspector::CreateExclusionsPreview;
  use Moose;
  has AssessmentTemplateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assessmentTemplateArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateExclusionsPreview');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector::CreateExclusionsPreviewResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::CreateExclusionsPreview - Arguments for method CreateExclusionsPreview on L<Paws::Inspector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateExclusionsPreview on the
L<Amazon Inspector|Paws::Inspector> service. Use the attributes of this class
as arguments to method CreateExclusionsPreview.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateExclusionsPreview.

=head1 SYNOPSIS

    my $inspector = Paws->service('Inspector');
    my $CreateExclusionsPreviewResponse = $inspector->CreateExclusionsPreview(
      AssessmentTemplateArn => 'MyArn',

    );

    # Results:
    my $PreviewToken = $CreateExclusionsPreviewResponse->PreviewToken;

    # Returns a L<Paws::Inspector::CreateExclusionsPreviewResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector/CreateExclusionsPreview>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentTemplateArn => Str

The ARN that specifies the assessment template for which you want to
create an exclusions preview.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateExclusionsPreview in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

