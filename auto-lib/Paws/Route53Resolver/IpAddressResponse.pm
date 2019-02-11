package Paws::Route53Resolver::IpAddressResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has Ip => (is => 'ro', isa => 'Str');
  has IpId => (is => 'ro', isa => 'Str');
  has ModificationTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has SubnetId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::IpAddressResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53Resolver::IpAddressResponse object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., SubnetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53Resolver::IpAddressResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

In the response to a GetResolverEndpoint request, information about the
IP addresses that the resolver endpoint uses for DNS queries.

=head1 ATTRIBUTES


=head2 CreationTime => Str

  The date and time that the IP address was created, in Unix time format
and Coordinated Universal Time (UTC).


=head2 Ip => Str

  One IP address that the resolver endpoint uses for DNS queries.


=head2 IpId => Str

  The ID of one IP address.


=head2 ModificationTime => Str

  The date and time that the IP address was last modified, in Unix time
format and Coordinated Universal Time (UTC).


=head2 Status => Str

  A status code that gives the current status of the request.


=head2 StatusMessage => Str

  A message that provides additional information about the status of the
request.


=head2 SubnetId => Str

  The ID of one subnet.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

