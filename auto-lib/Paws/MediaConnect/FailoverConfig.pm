# Generated by default/object.tt
package Paws::MediaConnect::FailoverConfig;
  use Moose;
  has FailoverMode => (is => 'ro', isa => 'Str', request_name => 'failoverMode', traits => ['NameInRequest']);
  has RecoveryWindow => (is => 'ro', isa => 'Int', request_name => 'recoveryWindow', traits => ['NameInRequest']);
  has SourcePriority => (is => 'ro', isa => 'Paws::MediaConnect::SourcePriority', request_name => 'sourcePriority', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::FailoverConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConnect::FailoverConfig object:

  $service_obj->Method(Att1 => { FailoverMode => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConnect::FailoverConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->FailoverMode

=head1 DESCRIPTION

The settings for source failover

=head1 ATTRIBUTES


=head2 FailoverMode => Str

The type of failover you choose for this flow. MERGE combines the
source streams into a single stream, allowing graceful recovery from
any single-source loss. FAILOVER allows switching between different
streams.


=head2 RecoveryWindow => Int

Search window time to look for dash-7 packets


=head2 SourcePriority => L<Paws::MediaConnect::SourcePriority>

The priority you want to assign to a source. You can have a primary
stream and a backup stream or two equally prioritized streams.


=head2 State => Str





=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

