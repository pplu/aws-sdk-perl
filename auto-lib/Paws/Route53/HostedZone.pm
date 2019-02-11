package Paws::Route53::HostedZone;
  use Moose;
  has CallerReference => (is => 'ro', isa => 'Str', required => 1);
  has Config => (is => 'ro', isa => 'Paws::Route53::HostedZoneConfig');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has LinkedService => (is => 'ro', isa => 'Paws::Route53::LinkedService');
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

A complex type that contains general information about the hosted zone.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CallerReference => Str

  The value that you specified for C<CallerReference> when you created
the hosted zone.


=head2 Config => L<Paws::Route53::HostedZoneConfig>

  A complex type that includes the C<Comment> and C<PrivateZone>
elements. If you omitted the C<HostedZoneConfig> and C<Comment>
elements from the request, the C<Config> and C<Comment> elements don't
appear in the response.


=head2 B<REQUIRED> Id => Str

  The ID that Amazon Route 53 assigned to the hosted zone when you
created it.


=head2 LinkedService => L<Paws::Route53::LinkedService>

  If the hosted zone was created by another service, the service that
created the hosted zone. When a hosted zone is created by another
service, you can't edit or delete it using Route 53.


=head2 B<REQUIRED> Name => Str

  The name of the domain. For public hosted zones, this is the name that
you have registered with your DNS registrar.

For information about how to specify characters other than C<a-z>,
C<0-9>, and C<-> (hyphen) and how to specify internationalized domain
names, see CreateHostedZone.


=head2 ResourceRecordSetCount => Int

  The number of resource record sets in the hosted zone.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

