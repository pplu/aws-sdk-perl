package Paws::CloudFormation::StackSet;
  use Moose;
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Description => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Parameter]');
  has StackSetId => (is => 'ro', isa => 'Str');
  has StackSetName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Tag]');
  has TemplateBody => (is => 'ro', isa => 'Str', decode_as => 'JSON', method => 'Template', traits => ['JSONAttribute']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::StackSet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::StackSet object:

  $service_obj->Method(Att1 => { Capabilities => $value, ..., TemplateBody => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::StackSet object:

  $result = $service_obj->Method(...);
  $result->Att1->Capabilities

=head1 DESCRIPTION

A structure that contains information about a stack set. A stack set
enables you to provision stacks into AWS accounts and across regions by
using a single CloudFormation template. In the stack set, you specify
the template to use, as well as any parameters and capabilities that
the template requires.

=head1 ATTRIBUTES


=head2 Capabilities => ArrayRef[Str|Undef]

  The capabilities that are allowed in the stack set. Some stack set
templates might include resources that can affect permissions in your
AWS accountE<mdash>for example, by creating new AWS Identity and Access
Management (IAM) users. For more information, see Acknowledging IAM
Resources in AWS CloudFormation Templates.


=head2 Description => Str

  A description of the stack set that you specify when the stack set is
created or updated.


=head2 Parameters => ArrayRef[L<Paws::CloudFormation::Parameter>]

  A list of input parameters for a stack set.


=head2 StackSetId => Str

  The ID of the stack set.


=head2 StackSetName => Str

  The name that's associated with the stack set.


=head2 Status => Str

  The status of the stack set.


=head2 Tags => ArrayRef[L<Paws::CloudFormation::Tag>]

  A list of tags that specify information about the stack set. A maximum
number of 50 tags can be specified.


=head2 TemplateBody => Str

  The structure that contains the body of the template that was used to
create or update the stack set.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

