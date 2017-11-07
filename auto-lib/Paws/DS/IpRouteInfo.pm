package Paws::DS::IpRouteInfo;
  use Moose;
  has AddedDateTime => (is => 'ro', isa => 'Str');
  has CidrIp => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DirectoryId => (is => 'ro', isa => 'Str');
  has IpRouteStatusMsg => (is => 'ro', isa => 'Str');
  has IpRouteStatusReason => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::IpRouteInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DS::IpRouteInfo object:

  $service_obj->Method(Att1 => { AddedDateTime => $value, ..., IpRouteStatusReason => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DS::IpRouteInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->AddedDateTime

=head1 DESCRIPTION

Information about one or more IP address blocks.

=head1 ATTRIBUTES


=head2 AddedDateTime => Str

  The date and time the address block was added to the directory.


=head2 CidrIp => Str

  IP address block in the IpRoute.


=head2 Description => Str

  Description of the IpRouteInfo.


=head2 DirectoryId => Str

  Identifier (ID) of the directory associated with the IP addresses.


=head2 IpRouteStatusMsg => Str

  The status of the IP address block.


=head2 IpRouteStatusReason => Str

  The reason for the IpRouteStatusMsg.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

