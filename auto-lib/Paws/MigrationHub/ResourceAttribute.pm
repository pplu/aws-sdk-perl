package Paws::MigrationHub::ResourceAttribute;
  use Moose;
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHub::ResourceAttribute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MigrationHub::ResourceAttribute object:

  $service_obj->Method(Att1 => { Type => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MigrationHub::ResourceAttribute object:

  $result = $service_obj->Method(...);
  $result->Att1->Type

=head1 DESCRIPTION

Attribute associated with a resource.

Note the corresponding format required per type listed below:

=over

=item IPV4

C<x.x.x.x>

I<where x is an integer in the range [0,255]>

=item IPV6

C<y : y : y : y : y : y : y : y>

I<where y is a hexadecimal between 0 and FFFF. [0, FFFF]>

=item MAC_ADDRESS

C<^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$>

=item FQDN

C<^[^E<lt>E<gt>{}\\\\/?,=\\p{Cntrl}]{1,256}$>

=back


=head1 ATTRIBUTES


=head2 B<REQUIRED> Type => Str

  Type of resource.


=head2 B<REQUIRED> Value => Str

  Value of the resource type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MigrationHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

