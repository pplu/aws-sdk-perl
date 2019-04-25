
package Paws::CloudFormation::ValidateTemplate;
  use Moose;
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateURL => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ValidateTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::ValidateTemplateOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ValidateTemplateResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ValidateTemplate - Arguments for method ValidateTemplate on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ValidateTemplate on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method ValidateTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ValidateTemplate.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    # To validate an AWS CloudFormation template
    # This example validates the specified template.
    my $ValidateTemplateOutput = $cloudformation->ValidateTemplate(
      {
        'TemplateBody' => 'MyTemplate.json'
      }
    );

    # Results:
    my $Capabilities       = $ValidateTemplateOutput->Capabilities;
    my $CapabilitiesReason = $ValidateTemplateOutput->CapabilitiesReason;
    my $Description        = $ValidateTemplateOutput->Description;
    my $Parameters         = $ValidateTemplateOutput->Parameters;

    # Returns a L<Paws::CloudFormation::ValidateTemplateOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/ValidateTemplate>

=head1 ATTRIBUTES


=head2 TemplateBody => Str

Structure containing the template body with a minimum length of 1 byte
and a maximum length of 51,200 bytes. For more information, go to
Template Anatomy
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html)
in the AWS CloudFormation User Guide.

Conditional: You must pass C<TemplateURL> or C<TemplateBody>. If both
are passed, only C<TemplateBody> is used.



=head2 TemplateURL => Str

Location of file containing the template body. The URL must point to a
template (max size: 460,800 bytes) that is located in an Amazon S3
bucket. For more information, go to Template Anatomy
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html)
in the AWS CloudFormation User Guide.

Conditional: You must pass C<TemplateURL> or C<TemplateBody>. If both
are passed, only C<TemplateBody> is used.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ValidateTemplate in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

