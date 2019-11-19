# Generated from default/object.tt
package Paws::SSO::RoleInfo;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSO::Types qw//;
  has AccountId => (is => 'ro', isa => Str);
  has RoleName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'AccountId' => 'accountId',
                       'RoleName' => 'roleName'
                     },
  'types' => {
               'RoleName' => {
                               'type' => 'Str'
                             },
               'AccountId' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SSO::RoleInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSO::RoleInfo object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., RoleName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSO::RoleInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Provides information about the role that is assigned to the user.

=head1 ATTRIBUTES


=head2 AccountId => Str

  The identifier of the AWS account assigned to the user.


=head2 RoleName => Str

  The friendly name of the role that is assigned to the user.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSO>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

