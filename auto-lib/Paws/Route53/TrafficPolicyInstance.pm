package Paws::Route53::TrafficPolicyInstance;
  use Moose;
  has HostedZoneId => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Message => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has State => (is => 'ro', isa => 'Str', required => 1);
  has TrafficPolicyId => (is => 'ro', isa => 'Str', required => 1);
  has TrafficPolicyType => (is => 'ro', isa => 'Str', required => 1);
  has TrafficPolicyVersion => (is => 'ro', isa => 'Int', required => 1);
  has TTL => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::TrafficPolicyInstance

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::TrafficPolicyInstance object:

  $service_obj->Method(Att1 => { HostedZoneId => $value, ..., TTL => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::TrafficPolicyInstance object:

  $result = $service_obj->Method(...);
  $result->Att1->HostedZoneId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 B<REQUIRED> HostedZoneId => Str

  


=head2 B<REQUIRED> Id => Str

  


=head2 B<REQUIRED> Message => Str

  


=head2 B<REQUIRED> Name => Str

  


=head2 B<REQUIRED> State => Str

  


=head2 B<REQUIRED> TrafficPolicyId => Str

  


=head2 B<REQUIRED> TrafficPolicyType => Str

  


=head2 B<REQUIRED> TrafficPolicyVersion => Int

  


=head2 B<REQUIRED> TTL => Int

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

