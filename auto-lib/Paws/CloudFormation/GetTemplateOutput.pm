# Generated from callresult_class.tt

package Paws::CloudFormation::GetTemplateOutput;
  use Moo;
  use JSON::MaybeXS;
  use URL::Encode;

  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::CloudFormation::Types qw//;
  has StagesAvailable => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has TemplateBody => (is => 'ro', isa => Str);
  has Template => ( is => 'lazy', builder => sub { my $self = shift;  return decode_json($self->TemplateBody); });

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TemplateBody' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'StagesAvailable' => {
                                      'type' => 'ArrayRef[Str|Undef]'
                                    }
             }
}
;
    return $Params_map;
  }
  
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
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html)
in the AWS CloudFormation User Guide.)

AWS CloudFormation returns the same template that was used when the
stack was created.


=head2 _request_id => Str


=cut

