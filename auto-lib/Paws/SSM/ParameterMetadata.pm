package Paws::SSM::ParameterMetadata;
  use Moose;
  has AllowedPattern => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has KeyId => (is => 'ro', isa => 'Str');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has LastModifiedUser => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ParameterMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::ParameterMetadata object:

  $service_obj->Method(Att1 => { AllowedPattern => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::ParameterMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowedPattern

=head1 DESCRIPTION

Metada includes information like the ARN of the last user and the
date/time the parameter was last used.

=head1 ATTRIBUTES


=head2 AllowedPattern => Str

  A parameter name can include only the following letters and symbols.

a-zA-Z0-9_.-


=head2 Description => Str

  Description of the parameter actions.


=head2 KeyId => Str

  The ID of the query key used for this parameter.


=head2 LastModifiedDate => Str

  Date the parameter was last changed or updated.


=head2 LastModifiedUser => Str

  Amazon Resource Name (ARN) of the AWS user who last changed the
parameter.


=head2 Name => Str

  The parameter name.


=head2 Type => Str

  The type of parameter. Valid parameter types include the following:
String, String list, Secure string.


=head2 Version => Int

  The parameter version.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

