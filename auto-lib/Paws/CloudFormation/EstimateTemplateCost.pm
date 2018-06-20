
package Paws::CloudFormation::EstimateTemplateCost;
  use Moose;
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Parameter]');
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateURL => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EstimateTemplateCost');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::EstimateTemplateCostOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'EstimateTemplateCostResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::EstimateTemplateCost - Arguments for method EstimateTemplateCost on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EstimateTemplateCost on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method EstimateTemplateCost.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EstimateTemplateCost.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $EstimateTemplateCostOutput = $cloudformation->EstimateTemplateCost(
      Parameters => [
        {
          ParameterKey     => 'MyParameterKey',      # OPTIONAL
          ParameterValue   => 'MyParameterValue',    # OPTIONAL
          ResolvedValue    => 'MyParameterValue',    # OPTIONAL
          UsePreviousValue => 1,                     # OPTIONAL
        },
        ...
      ],                                             # OPTIONAL
      TemplateBody => 'MyTemplateBody',              # OPTIONAL
      TemplateURL  => 'MyTemplateURL',               # OPTIONAL
    );

    # Results:
    my $Url = $EstimateTemplateCostOutput->Url;

    # Returns a L<Paws::CloudFormation::EstimateTemplateCostOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/EstimateTemplateCost>

=head1 ATTRIBUTES


=head2 Parameters => ArrayRef[L<Paws::CloudFormation::Parameter>]

A list of C<Parameter> structures that specify input parameters.



=head2 TemplateBody => Str

Structure containing the template body with a minimum length of 1 byte
and a maximum length of 51,200 bytes. (For more information, go to
Template Anatomy
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html)
in the AWS CloudFormation User Guide.)

Conditional: You must pass C<TemplateBody> or C<TemplateURL>. If both
are passed, only C<TemplateBody> is used.



=head2 TemplateURL => Str

Location of file containing the template body. The URL must point to a
template that is located in an Amazon S3 bucket. For more information,
go to Template Anatomy
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html)
in the AWS CloudFormation User Guide.

Conditional: You must pass C<TemplateURL> or C<TemplateBody>. If both
are passed, only C<TemplateBody> is used.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EstimateTemplateCost in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

