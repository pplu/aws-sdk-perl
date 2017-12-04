package Paws::CloudFormation::TemplateParameter;
  use Moose;
  has DefaultValue => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has NoEcho => (is => 'ro', isa => 'Bool');
  has ParameterKey => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::TemplateParameter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::TemplateParameter object:

  $service_obj->Method(Att1 => { DefaultValue => $value, ..., ParameterKey => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::TemplateParameter object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultValue

=head1 DESCRIPTION

The TemplateParameter data type.

=head1 ATTRIBUTES


=head2 DefaultValue => Str

  The default value associated with the parameter.


=head2 Description => Str

  User defined description associated with the parameter.


=head2 NoEcho => Bool

  Flag indicating whether the parameter should be displayed as plain text
in logs and UIs.


=head2 ParameterKey => Str

  The name associated with the parameter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

