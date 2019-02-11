package Paws::ECS::Setting;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has PrincipalArn => (is => 'ro', isa => 'Str', request_name => 'principalArn', traits => ['NameInRequest']);
  has Value => (is => 'ro', isa => 'Str', request_name => 'value', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::Setting

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::Setting object:

  $service_obj->Method(Att1 => { Name => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::Setting object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

The current account setting for a resource.

=head1 ATTRIBUTES


=head2 Name => Str

  The account resource name.


=head2 PrincipalArn => Str

  The ARN of the principal, which can be an IAM user, IAM role, or the
root user. If this field is omitted, the authenticated user is assumed.


=head2 Value => Str

  The current account setting for the resource name. If C<enabled>, then
the resource will receive the new Amazon Resource Name (ARN) and
resource identifier (ID) format. If C<disabled>, then the resource will
receive the old Amazon Resource Name (ARN) and resource identifier (ID)
format.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

