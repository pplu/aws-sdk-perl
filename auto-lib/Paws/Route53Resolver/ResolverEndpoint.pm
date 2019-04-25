package Paws::Route53Resolver::ResolverEndpoint;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has CreatorRequestId => (is => 'ro', isa => 'Str');
  has Direction => (is => 'ro', isa => 'Str');
  has HostVPCId => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has IpAddressCount => (is => 'ro', isa => 'Int');
  has ModificationTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Status => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ResolverEndpoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53Resolver::ResolverEndpoint object:

  $service_obj->Method(Att1 => { Arn => $value, ..., StatusMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53Resolver::ResolverEndpoint object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

In the response to a CreateResolverEndpoint, DeleteResolverEndpoint,
GetResolverEndpoint, ListResolverEndpoints, or UpdateResolverEndpoint
request, a complex type that contains settings for an existing inbound
or outbound resolver endpoint.

=head1 ATTRIBUTES


=head2 Arn => Str

  The ARN (Amazon Resource Name) for the resolver endpoint.


=head2 CreationTime => Str

  The date and time that the endpoint was created, in Unix time format
and Coordinated Universal Time (UTC).


=head2 CreatorRequestId => Str

  A unique string that identifies the request that created the resolver
endpoint. The C<CreatorRequestId> allows failed requests to be retried
without the risk of executing the operation twice.


=head2 Direction => Str

  Indicates whether the resolver endpoint allows inbound or outbound DNS
queries:

=over

=item *

C<INBOUND>: allows DNS queries to your VPC from your network or another
VPC

=item *

C<OUTBOUND>: allows DNS queries from your VPC to your network or
another VPC

=back



=head2 HostVPCId => Str

  The ID of the VPC that you want to create the resolver endpoint in.


=head2 Id => Str

  The ID of the resolver endpoint.


=head2 IpAddressCount => Int

  The number of IP addresses that the resolver endpoint can use for DNS
queries.


=head2 ModificationTime => Str

  The date and time that the endpoint was last modified, in Unix time
format and Coordinated Universal Time (UTC).


=head2 Name => Str

  The name that you assigned to the resolver endpoint when you submitted
a CreateResolverEndpoint request.


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

  The ID of one or more security groups that control access to this VPC.
The security group must include one or more inbound resolver rules.


=head2 Status => Str

  A code that specifies the current status of the resolver endpoint.


=head2 StatusMessage => Str

  A detailed description of the status of the resolver endpoint.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

