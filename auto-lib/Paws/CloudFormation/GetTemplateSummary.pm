
package Paws::CloudFormation::GetTemplateSummary;
  use Moose;
  has StackName => (is => 'ro', isa => 'Str');
  has StackSetName => (is => 'ro', isa => 'Str');
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateURL => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTemplateSummary');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::GetTemplateSummaryOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetTemplateSummaryResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::GetTemplateSummary - Arguments for method GetTemplateSummary on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTemplateSummary on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method GetTemplateSummary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTemplateSummary.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $GetTemplateSummaryOutput = $cloudformation->GetTemplateSummary(
      StackName    => 'MyStackNameOrId',       # OPTIONAL
      StackSetName => 'MyStackSetNameOrId',    # OPTIONAL
      TemplateBody => 'MyTemplateBody',        # OPTIONAL
      TemplateURL  => 'MyTemplateURL',         # OPTIONAL
    );

    # Results:
    my $Capabilities       = $GetTemplateSummaryOutput->Capabilities;
    my $CapabilitiesReason = $GetTemplateSummaryOutput->CapabilitiesReason;
    my $DeclaredTransforms = $GetTemplateSummaryOutput->DeclaredTransforms;
    my $Description        = $GetTemplateSummaryOutput->Description;
    my $Metadata           = $GetTemplateSummaryOutput->Metadata;
    my $Parameters         = $GetTemplateSummaryOutput->Parameters;
    my $ResourceTypes      = $GetTemplateSummaryOutput->ResourceTypes;
    my $Version            = $GetTemplateSummaryOutput->Version;

    # Returns a L<Paws::CloudFormation::GetTemplateSummaryOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/GetTemplateSummary>

=head1 ATTRIBUTES


=head2 StackName => Str

The name or the stack ID that is associated with the stack, which are
not always interchangeable. For running stacks, you can specify either
the stack's name or its unique stack ID. For deleted stack, you must
specify the unique stack ID.

Conditional: You must specify only one of the following parameters:
C<StackName>, C<StackSetName>, C<TemplateBody>, or C<TemplateURL>.



=head2 StackSetName => Str

The name or unique ID of the stack set from which the stack was
created.

Conditional: You must specify only one of the following parameters:
C<StackName>, C<StackSetName>, C<TemplateBody>, or C<TemplateURL>.



=head2 TemplateBody => Str

Structure containing the template body with a minimum length of 1 byte
and a maximum length of 51,200 bytes. For more information about
templates, see Template Anatomy
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html)
in the AWS CloudFormation User Guide.

Conditional: You must specify only one of the following parameters:
C<StackName>, C<StackSetName>, C<TemplateBody>, or C<TemplateURL>.



=head2 TemplateURL => Str

Location of file containing the template body. The URL must point to a
template (max size: 460,800 bytes) that is located in an Amazon S3
bucket. For more information about templates, see Template Anatomy
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html)
in the AWS CloudFormation User Guide.

Conditional: You must specify only one of the following parameters:
C<StackName>, C<StackSetName>, C<TemplateBody>, or C<TemplateURL>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTemplateSummary in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

