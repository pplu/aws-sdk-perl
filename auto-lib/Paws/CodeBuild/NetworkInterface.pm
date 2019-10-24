# Generated from default/object.tt
package Paws::CodeBuild::NetworkInterface;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeBuild::Types qw//;
  has NetworkInterfaceId => (is => 'ro', isa => Str);
  has SubnetId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SubnetId' => {
                               'type' => 'Str'
                             },
               'NetworkInterfaceId' => {
                                         'type' => 'Str'
                                       }
             },
  'NameInRequest' => {
                       'SubnetId' => 'subnetId',
                       'NetworkInterfaceId' => 'networkInterfaceId'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::NetworkInterface

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::NetworkInterface object:

  $service_obj->Method(Att1 => { NetworkInterfaceId => $value, ..., SubnetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::NetworkInterface object:

  $result = $service_obj->Method(...);
  $result->Att1->NetworkInterfaceId

=head1 DESCRIPTION

Describes a network interface.

=head1 ATTRIBUTES


=head2 NetworkInterfaceId => Str

  The ID of the network interface.


=head2 SubnetId => Str

  The ID of the subnet.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

