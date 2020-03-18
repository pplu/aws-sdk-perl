package Paws::Organizations::EffectivePolicy;
  use Moose;
  has LastUpdatedTimestamp => (is => 'ro', isa => 'Str');
  has PolicyContent => (is => 'ro', isa => 'Str');
  has PolicyType => (is => 'ro', isa => 'Str');
  has TargetId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::EffectivePolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Organizations::EffectivePolicy object:

  $service_obj->Method(Att1 => { LastUpdatedTimestamp => $value, ..., TargetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Organizations::EffectivePolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->LastUpdatedTimestamp

=head1 DESCRIPTION

Contains rules to be applied to the affected accounts. The effective
policy is the aggregation of any policies the account inherits, plus
any policy directly attached to the account.

=head1 ATTRIBUTES


=head2 LastUpdatedTimestamp => Str

  The time of the last update to this policy.


=head2 PolicyContent => Str

  The text content of the policy.


=head2 PolicyType => Str

  The policy type.


=head2 TargetId => Str

  The account ID of the policy target.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

