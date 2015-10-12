
package Paws::CloudFormation::GetTemplateSummaryOutput;
  use Moose;
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str]');
  has CapabilitiesReason => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Metadata => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::ParameterDeclaration]');
  has ResourceTypes => (is => 'ro', isa => 'ArrayRef[Str]');
  has Version => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::GetTemplateSummaryOutput

=head1 ATTRIBUTES

=head2 Capabilities => ArrayRef[Str]

  The capabilities found within the template. Currently, AWS
CloudFormation supports only the CAPABILITY_IAM capability. If your
template contains IAM resources, you must specify the CAPABILITY_IAM
value for this parameter when you use the CreateStack or UpdateStack
actions with your template; otherwise, those actions return an
InsufficientCapabilities error.
=head2 CapabilitiesReason => Str

  The list of resources that generated the values in the C<Capabilities>
response element.
=head2 Description => Str

  The value that is defined in the C<Description> property of the
template.
=head2 Metadata => Str

  The value that is defined for the C<Metadata> property of the template.
=head2 Parameters => ArrayRef[Paws::CloudFormation::ParameterDeclaration]

  A list of parameter declarations that describe various properties for
each parameter.
=head2 ResourceTypes => ArrayRef[Str]

  A list of all the template resource types that are defined in the
template, such as C<AWS::EC2::Instance>, C<AWS::Dynamo::Table>, and
C<Custom::MyCustomInstance>. Use the following syntax to describe
template resource types: C<AWS::*> (for all AWS resources),
C<Custom::*> (for all custom resources), C<Custom::I<logical_ID>> (for
a specific custom resource), C<AWS::I<service_name>::*> (for all
resources of a particular AWS service), and
C<AWS::I<service_name>::I<resource_logical_ID>> (for a specific AWS
resource).
=head2 Version => Str

  The AWS template format version, which identifies the capabilities of
the template.


=cut

