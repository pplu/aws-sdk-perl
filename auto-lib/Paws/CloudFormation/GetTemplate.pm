
package Paws::CloudFormation::GetTemplate;
  use Moose;
  has ChangeSetName => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str');
  has TemplateStage => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::GetTemplateOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetTemplateResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::GetTemplate - Arguments for method GetTemplate on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTemplate on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method GetTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTemplate.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $GetTemplateOutput = $cloudformation->GetTemplate(
      ChangeSetName => 'MyChangeSetNameOrId',    # OPTIONAL
      StackName     => 'MyStackName',            # OPTIONAL
      TemplateStage => 'Original',               # OPTIONAL
    );

    # Results:
    my $StagesAvailable = $GetTemplateOutput->StagesAvailable;
    my $TemplateBody    = $GetTemplateOutput->TemplateBody;

    # Returns a L<Paws::CloudFormation::GetTemplateOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/GetTemplate>

=head1 ATTRIBUTES


=head2 ChangeSetName => Str

The name or Amazon Resource Name (ARN) of a change set for which AWS
CloudFormation returns the associated template. If you specify a name,
you must also specify the C<StackName>.



=head2 StackName => Str

The name or the unique stack ID that is associated with the stack,
which are not always interchangeable:

=over

=item *

Running stacks: You can specify either the stack's name or its unique
stack ID.

=item *

Deleted stacks: You must specify the unique stack ID.

=back

Default: There is no default value.



=head2 TemplateStage => Str

For templates that include transforms, the stage of the template that
AWS CloudFormation returns. To get the user-submitted template, specify
C<Original>. To get the template after AWS CloudFormation has processed
all transforms, specify C<Processed>.

If the template doesn't include transforms, C<Original> and
C<Processed> return the same template. By default, AWS CloudFormation
specifies C<Original>.

Valid values are: C<"Original">, C<"Processed">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTemplate in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

