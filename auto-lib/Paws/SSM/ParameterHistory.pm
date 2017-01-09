package Paws::SSM::ParameterHistory;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has KeyId => (is => 'ro', isa => 'Str');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has LastModifiedUser => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ParameterHistory

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::ParameterHistory object:

  $service_obj->Method(Att1 => { Description => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::ParameterHistory object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

Information about parameter usage.

=head1 ATTRIBUTES


=head2 Description => Str

  Information about the parameter.


=head2 KeyId => Str

  The ID of the query key used for this parameter.


=head2 LastModifiedDate => Str

  Date the parameter was last changed or updated.


=head2 LastModifiedUser => Str

  Amazon Resource Name (ARN) of the AWS user who last changed the
parameter.


=head2 Name => Str

  The name of the parameter.


=head2 Type => Str

  The type of parameter used.


=head2 Value => Str

  The parameter value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

