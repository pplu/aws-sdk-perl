# Generated from default/object.tt
package Paws::SMS::VmServerAddress;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SMS::Types qw//;
  has VmId => (is => 'ro', isa => Str);
  has VmManagerId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VmId' => {
                           'type' => 'Str'
                         },
               'VmManagerId' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'VmManagerId' => 'vmManagerId',
                       'VmId' => 'vmId'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS::VmServerAddress

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SMS::VmServerAddress object:

  $service_obj->Method(Att1 => { VmId => $value, ..., VmManagerId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SMS::VmServerAddress object:

  $result = $service_obj->Method(...);
  $result->Att1->VmId

=head1 DESCRIPTION

Represents a VM server location.

=head1 ATTRIBUTES


=head2 VmId => Str

  The identifier of the VM.


=head2 VmManagerId => Str

  The identifier of the VM manager.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

