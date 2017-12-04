package Paws::Route53::HostedZoneConfig;
  use Moose;
  has Comment => (is => 'ro', isa => 'Str');
  has PrivateZone => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::HostedZoneConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::HostedZoneConfig object:

  $service_obj->Method(Att1 => { Comment => $value, ..., PrivateZone => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::HostedZoneConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Comment

=head1 DESCRIPTION

A complex type that contains an optional comment about your hosted
zone. If you don't want to specify a comment, omit both the
C<HostedZoneConfig> and C<Comment> elements.

=head1 ATTRIBUTES


=head2 Comment => Str

  Any comments that you want to include about the hosted zone.


=head2 PrivateZone => Bool

  A value that indicates whether this is a private hosted zone.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

