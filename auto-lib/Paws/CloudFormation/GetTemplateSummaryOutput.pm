# Generated from callresult_class.tt

package Paws::CloudFormation::GetTemplateSummaryOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::CloudFormation::Types qw/CloudFormation_ParameterDeclaration/;
  has Capabilities => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has CapabilitiesReason => (is => 'ro', isa => Str);
  has DeclaredTransforms => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Description => (is => 'ro', isa => Str);
  has Metadata => (is => 'ro', isa => Str);
  has Parameters => (is => 'ro', isa => ArrayRef[CloudFormation_ParameterDeclaration]);
  has ResourceTypes => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Version => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Metadata' => {
                               'type' => 'Str'
                             },
               'Parameters' => {
                                 'class' => 'Paws::CloudFormation::ParameterDeclaration',
                                 'type' => 'ArrayRef[CloudFormation_ParameterDeclaration]'
                               },
               'Version' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CapabilitiesReason' => {
                                         'type' => 'Str'
                                       },
               'DeclaredTransforms' => {
                                         'type' => 'ArrayRef[Str|Undef]'
                                       },
               'Capabilities' => {
                                   'type' => 'ArrayRef[Str|Undef]'
                                 },
               'Description' => {
                                  'type' => 'Str'
                                },
               'ResourceTypes' => {
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

Paws::CloudFormation::GetTemplateSummaryOutput

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

The value that is defined in the C<Description> property of the
template.


=head2 Metadata => Str

The value that is defined for the C<Metadata> property of the template.


=head2 Parameters => ArrayRef[CloudFormation_ParameterDeclaration]

A list of parameter declarations that describe various properties for
each parameter.


=head2 ResourceTypes => ArrayRef[Str|Undef]

A list of all the template resource types that are defined in the
template, such as C<AWS::EC2::Instance>, C<AWS::Dynamo::Table>, and
C<Custom::MyCustomInstance>.


=head2 Version => Str

The AWS template format version, which identifies the capabilities of
the template.


=head2 _request_id => Str


=cut

