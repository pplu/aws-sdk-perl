# Generated from default/object.tt
package Paws::ManagedBlockchain::MemberFabricConfiguration;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ManagedBlockchain::Types qw//;
  has AdminPassword => (is => 'ro', isa => Str, required => 1);
  has AdminUsername => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AdminUsername' => {
                                    'type' => 'Str'
                                  },
               'AdminPassword' => {
                                    'type' => 'Str'
                                  }
             },
  'IsRequired' => {
                    'AdminUsername' => 1,
                    'AdminPassword' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::MemberFabricConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ManagedBlockchain::MemberFabricConfiguration object:

  $service_obj->Method(Att1 => { AdminPassword => $value, ..., AdminUsername => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ManagedBlockchain::MemberFabricConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AdminPassword

=head1 DESCRIPTION

Configuration properties for Hyperledger Fabric for a member in a
Managed Blockchain network using the Hyperledger Fabric framework.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AdminPassword => Str

  The password for the member's initial administrative user. The
C<AdminPassword> must be at least eight characters long and no more
than 32 characters. It must contain at least one uppercase letter, one
lowercase letter, and one digit. It cannot have a single
quote(E<lsquo>), double quote(E<ldquo>), forward slash(/), backward
slash(\), @, or a space.


=head2 B<REQUIRED> AdminUsername => Str

  The user name for the member's initial administrative user.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

