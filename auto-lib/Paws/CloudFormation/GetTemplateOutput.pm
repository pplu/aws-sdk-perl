
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

The template type.

=over

=item *

For stacks, you can use either the C<Original> or the C<Processed>
template type.

=item *

For change sets, you can use only the C<Original> template type. After
the transforms are processed, you can use the C<Processed> template
type.

=back

If you create a change set for a new stack, you must select the
template type.


=head2 TemplateBody => Str

Structure containing the template body. (For more information, go to
Template Anatomy in the AWS CloudFormation User Guide.)

AWS CloudFormation returns the same template that was used when the
stack was created.


=head2 _request_id => Str


=cut

