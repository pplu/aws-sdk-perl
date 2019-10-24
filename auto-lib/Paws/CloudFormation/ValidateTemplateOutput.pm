# Generated from callresult_class.tt

package Paws::CloudFormation::ValidateTemplateOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::CloudFormation::Types qw/CloudFormation_TemplateParameter/;
  has Capabilities => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has CapabilitiesReason => (is => 'ro', isa => Str);
  has DeclaredTransforms => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Description => (is => 'ro', isa => Str);
  has Parameters => (is => 'ro', isa => ArrayRef[CloudFormation_TemplateParameter]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Parameters' => {
                                 'class' => 'Paws::CloudFormation::TemplateParameter',
                                 'type' => 'ArrayRef[CloudFormation_TemplateParameter]'
                               },
               'CapabilitiesReason' => {
                                         'type' => 'Str'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DeclaredTransforms' => {
                                         'type' => 'ArrayRef[Str|Undef]'
                                       },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Capabilities' => {
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

Paws::CloudFormation::ValidateTemplateOutput

=head1 ATTRIBUTES


=head2 Capabilities => ArrayRef[Str|Undef]

The capabilities found within the template. If your template contains
IAM resources, you must specify the CAPABILITY_IAM or
CAPABILITY_NAMED_IAM value for this parameter when you use the
CreateStack or UpdateStack actions with your template; otherwise, those
actions return an InsufficientCapabilities error.

For more information, see Acknowledging IAM Resources in AWS
CloudFormation Templates
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities).


=head2 CapabilitiesReason => Str

The list of resources that generated the values in the C<Capabilities>
response element.


=head2 DeclaredTransforms => ArrayRef[Str|Undef]

A list of the transforms that are declared in the template.


=head2 Description => Str

The description found within the template.


=head2 Parameters => ArrayRef[CloudFormation_TemplateParameter]

A list of C<TemplateParameter> structures.


=head2 _request_id => Str


=cut

