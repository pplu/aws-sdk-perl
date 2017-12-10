
package Paws::CloudFormation::GetTemplateOutput;
  use Moose;
  has StagesAvailable => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TemplateBody => (is => 'ro', isa => 'Str', decode_as => 'JSON', method => 'Template', traits => ['JSONAttribute',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::GetTemplateOutput

=head1 ATTRIBUTES


=head2 StagesAvailable => ArrayRef[Str|Undef]

The stage of the template that you can retrieve. For stacks, the
C<Original> and C<Processed> templates are always available. For change
sets, the C<Original> template is always available. After AWS
CloudFormation finishes creating the change set, the C<Processed>
template becomes available.


=head2 TemplateBody => Str

Structure containing the template body. (For more information, go to
Template Anatomy
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html)
in the AWS CloudFormation User Guide.)

AWS CloudFormation returns the same template that was used when the
stack was created.


=head2 _request_id => Str


=cut

