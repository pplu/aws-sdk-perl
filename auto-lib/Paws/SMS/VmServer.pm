# Generated from default/object.tt
package Paws::SMS::VmServer;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SMS::Types qw/SMS_VmServerAddress/;
  has VmManagerName => (is => 'ro', isa => Str);
  has VmManagerType => (is => 'ro', isa => Str);
  has VmName => (is => 'ro', isa => Str);
  has VmPath => (is => 'ro', isa => Str);
  has VmServerAddress => (is => 'ro', isa => SMS_VmServerAddress);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'VmName' => 'vmName',
                       'VmManagerType' => 'vmManagerType',
                       'VmPath' => 'vmPath',
                       'VmManagerName' => 'vmManagerName',
                       'VmServerAddress' => 'vmServerAddress'
                     },
  'types' => {
               'VmPath' => {
                             'type' => 'Str'
                           },
               'VmServerAddress' => {
                                      'type' => 'SMS_VmServerAddress',
                                      'class' => 'Paws::SMS::VmServerAddress'
                                    },
               'VmManagerName' => {
                                    'type' => 'Str'
                                  },
               'VmName' => {
                             'type' => 'Str'
                           },
               'VmManagerType' => {
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

Paws::SMS::VmServer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SMS::VmServer object:

  $service_obj->Method(Att1 => { VmManagerName => $value, ..., VmServerAddress => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SMS::VmServer object:

  $result = $service_obj->Method(...);
  $result->Att1->VmManagerName

=head1 DESCRIPTION

Represents a VM server.

=head1 ATTRIBUTES


=head2 VmManagerName => Str

  The name of the VM manager.


=head2 VmManagerType => Str

  The type of VM management product.


=head2 VmName => Str

  The name of the VM.


=head2 VmPath => Str

  The VM folder path in the vCenter Server virtual machine inventory
tree.


=head2 VmServerAddress => SMS_VmServerAddress

  Information about the VM server location.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

