package Paws::Lightsail::RelationalDatabaseParameter;
  use Moose;
  has AllowedValues => (is => 'ro', isa => 'Str', request_name => 'allowedValues', traits => ['NameInRequest']);
  has ApplyMethod => (is => 'ro', isa => 'Str', request_name => 'applyMethod', traits => ['NameInRequest']);
  has ApplyType => (is => 'ro', isa => 'Str', request_name => 'applyType', traits => ['NameInRequest']);
  has DataType => (is => 'ro', isa => 'Str', request_name => 'dataType', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has IsModifiable => (is => 'ro', isa => 'Bool', request_name => 'isModifiable', traits => ['NameInRequest']);
  has ParameterName => (is => 'ro', isa => 'Str', request_name => 'parameterName', traits => ['NameInRequest']);
  has ParameterValue => (is => 'ro', isa => 'Str', request_name => 'parameterValue', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::RelationalDatabaseParameter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::RelationalDatabaseParameter object:

  $service_obj->Method(Att1 => { AllowedValues => $value, ..., ParameterValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::RelationalDatabaseParameter object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowedValues

=head1 DESCRIPTION

Describes the parameters of a database.

=head1 ATTRIBUTES


=head2 AllowedValues => Str

  Specifies the valid range of values for the parameter.


=head2 ApplyMethod => Str

  Indicates when parameter updates are applied.

Can be C<immediate> or C<pending-reboot>.


=head2 ApplyType => Str

  Specifies the engine-specific parameter type.


=head2 DataType => Str

  Specifies the valid data type for the parameter.


=head2 Description => Str

  Provides a description of the parameter.


=head2 IsModifiable => Bool

  A Boolean value indicating whether the parameter can be modified.


=head2 ParameterName => Str

  Specifies the name of the parameter.


=head2 ParameterValue => Str

  Specifies the value of the parameter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

