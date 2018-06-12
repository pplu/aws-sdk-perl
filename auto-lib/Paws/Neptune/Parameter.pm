package Paws::Neptune::Parameter;
  use Moose;
  has AllowedValues => (is => 'ro', isa => 'Str');
  has ApplyMethod => (is => 'ro', isa => 'Str');
  has ApplyType => (is => 'ro', isa => 'Str');
  has DataType => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has IsModifiable => (is => 'ro', isa => 'Bool');
  has MinimumEngineVersion => (is => 'ro', isa => 'Str');
  has ParameterName => (is => 'ro', isa => 'Str');
  has ParameterValue => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::Parameter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Neptune::Parameter object:

  $service_obj->Method(Att1 => { AllowedValues => $value, ..., Source => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Neptune::Parameter object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowedValues

=head1 DESCRIPTION

This data type is used as a request parameter in the
ModifyDBParameterGroup and ResetDBParameterGroup actions.

This data type is used as a response element in the
DescribeEngineDefaultParameters and DescribeDBParameters actions.

=head1 ATTRIBUTES


=head2 AllowedValues => Str

  Specifies the valid range of values for the parameter.


=head2 ApplyMethod => Str

  Indicates when to apply parameter updates.


=head2 ApplyType => Str

  Specifies the engine specific parameters type.


=head2 DataType => Str

  Specifies the valid data type for the parameter.


=head2 Description => Str

  Provides a description of the parameter.


=head2 IsModifiable => Bool

  Indicates whether (C<true>) or not (C<false>) the parameter can be
modified. Some parameters have security or operational implications
that prevent them from being changed.


=head2 MinimumEngineVersion => Str

  The earliest engine version to which the parameter can apply.


=head2 ParameterName => Str

  Specifies the name of the parameter.


=head2 ParameterValue => Str

  Specifies the value of the parameter.


=head2 Source => Str

  Indicates the source of the parameter value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

