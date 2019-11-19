# Generated from default/object.tt
package Paws::ECS::Setting;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ECS::Types qw//;
  has Name => (is => 'ro', isa => Str);
  has PrincipalArn => (is => 'ro', isa => Str);
  has Value => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Value' => {
                            'type' => 'Str'
                          },
               'PrincipalArn' => {
                                   'type' => 'Str'
                                 },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'Name' => 'name',
                       'PrincipalArn' => 'principalArn',
                       'Value' => 'value'
                     }
}
;
    return $Params_map;
  }


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

  The Amazon ECS resource name.


=head2 PrincipalArn => Str

  The ARN of the principal, which can be an IAM user, IAM role, or the
root user. If this field is omitted, the authenticated user is assumed.


=head2 Value => Str

  Whether the account setting is enabled or disabled for the specified
resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

