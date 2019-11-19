# Generated from default/object.tt
package Paws::ManagedBlockchain::NodeConfiguration;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ManagedBlockchain::Types qw//;
  has AvailabilityZone => (is => 'ro', isa => Str, required => 1);
  has InstanceType => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'InstanceType' => 1,
                    'AvailabilityZone' => 1
                  },
  'types' => {
               'AvailabilityZone' => {
                                       'type' => 'Str'
                                     },
               'InstanceType' => {
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

Paws::ManagedBlockchain::NodeConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ManagedBlockchain::NodeConfiguration object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., InstanceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ManagedBlockchain::NodeConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

Configuration properties of a peer node.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AvailabilityZone => Str

  The Availability Zone in which the node exists.


=head2 B<REQUIRED> InstanceType => Str

  The Amazon Managed Blockchain instance type for the node.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

