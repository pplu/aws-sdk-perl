# Generated from default/object.tt
package Paws::ManagedBlockchain::MemberConfiguration;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ManagedBlockchain::Types qw/ManagedBlockchain_MemberFrameworkConfiguration/;
  has Description => (is => 'ro', isa => Str);
  has FrameworkConfiguration => (is => 'ro', isa => ManagedBlockchain_MemberFrameworkConfiguration, required => 1);
  has Name => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FrameworkConfiguration' => {
                                             'type' => 'ManagedBlockchain_MemberFrameworkConfiguration',
                                             'class' => 'Paws::ManagedBlockchain::MemberFrameworkConfiguration'
                                           },
               'Name' => {
                           'type' => 'Str'
                         },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Name' => 1,
                    'FrameworkConfiguration' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::MemberConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ManagedBlockchain::MemberConfiguration object:

  $service_obj->Method(Att1 => { Description => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ManagedBlockchain::MemberConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

Configuration properties of the member.

=head1 ATTRIBUTES


=head2 Description => Str

  An optional description of the member.


=head2 B<REQUIRED> FrameworkConfiguration => ManagedBlockchain_MemberFrameworkConfiguration

  Configuration properties of the blockchain framework relevant to the
member.


=head2 B<REQUIRED> Name => Str

  The name of the member.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

