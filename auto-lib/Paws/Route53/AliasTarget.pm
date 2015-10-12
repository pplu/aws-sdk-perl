package Paws::Route53::AliasTarget;
  use Moose;
  has DNSName => (is => 'ro', isa => 'Str', required => 1);
  has EvaluateTargetHealth => (is => 'ro', isa => 'Bool', required => 1);
  has HostedZoneId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::AliasTarget

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::AliasTarget object:

  $service_obj->Method(Att1 => { DNSName => $value, ..., HostedZoneId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::AliasTarget object:

  $result = $service_obj->Method(...);
  $result->Att1->DNSName

=head1 ATTRIBUTES

=head2 B<REQUIRED> DNSName => Str

  

I<Alias resource record sets only:> The external DNS name associated
with the AWS Resource.

For more information and an example, see Creating Alias Resource Record
Sets in the I<Amazon Route 53 Developer Guide>

.










=head2 B<REQUIRED> EvaluateTargetHealth => Bool

  

I<Alias resource record sets only:> A boolean value that indicates
whether this Resource Record Set should respect the health status of
any health checks associated with the ALIAS target record which it is
linked to.

For more information and an example, see Creating Alias Resource Record
Sets in the I<Amazon Route 53 Developer Guide>

.










=head2 B<REQUIRED> HostedZoneId => Str

  

I<Alias resource record sets only:> The value of the hosted zone ID for
the AWS resource.

For more information and an example, see Creating Alias Resource Record
Sets in the I<Amazon Route 53 Developer Guide>

.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

