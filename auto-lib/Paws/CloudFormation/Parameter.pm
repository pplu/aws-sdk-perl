package Paws::CloudFormation::Parameter;
  use Moose;
  has ParameterKey => (is => 'ro', isa => 'Str');
  has ParameterValue => (is => 'ro', isa => 'Str');
  has ResolvedValue => (is => 'ro', isa => 'Str');
  has UsePreviousValue => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::Parameter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::Parameter object:

  $service_obj->Method(Att1 => { ParameterKey => $value, ..., UsePreviousValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::Parameter object:

  $result = $service_obj->Method(...);
  $result->Att1->ParameterKey

=head1 DESCRIPTION

The Parameter data type.

=head1 ATTRIBUTES


=head2 ParameterKey => Str

  The key associated with the parameter. If you don't specify a key and
value for a particular parameter, AWS CloudFormation uses the default
value that is specified in your template.


=head2 ParameterValue => Str

  The input value associated with the parameter.


=head2 ResolvedValue => Str

  Read-only. The value that corresponds to a Systems Manager parameter
key. This field is returned only for C<SSM> parameter types
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/parameters-section-structure.html#aws-ssm-parameter-types)
in the template.


=head2 UsePreviousValue => Bool

  During a stack update, use the existing parameter value that the stack
is using for a given parameter key. If you specify C<true>, do not
specify a parameter value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

