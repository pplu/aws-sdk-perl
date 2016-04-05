package Paws::Route53::HostedZone;
  use Moose;
  has CallerReference => (is => 'ro', isa => 'Str', required => 1);
  has Config => (is => 'ro', isa => 'Paws::Route53::HostedZoneConfig');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ResourceRecordSetCount => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::HostedZone

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::HostedZone object:

  $service_obj->Method(Att1 => { CallerReference => $value, ..., ResourceRecordSetCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::HostedZone object:

  $result = $service_obj->Method(...);
  $result->Att1->CallerReference

=head1 DESCRIPTION

A complex type that contain information about the specified hosted
zone.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CallerReference => Str

  A unique string that identifies the request to create the hosted zone.


=head2 Config => L<Paws::Route53::HostedZoneConfig>

  A complex type that contains the C<Comment> element.


=head2 B<REQUIRED> Id => Str

  The ID of the specified hosted zone.


=head2 B<REQUIRED> Name => Str

  The name of the domain. This must be a fully-specified domain, for
example, www.example.com. The trailing dot is optional; Amazon Route 53
assumes that the domain name is fully qualified. This means that Amazon
Route 53 treats www.example.com (without a trailing dot) and
www.example.com. (with a trailing dot) as identical.

This is the name you have registered with your DNS registrar. You
should ask your registrar to change the authoritative name servers for
your domain to the set of C<NameServers> elements returned in
C<DelegationSet>.


=head2 ResourceRecordSetCount => Int

  Total number of resource record sets in the hosted zone.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

