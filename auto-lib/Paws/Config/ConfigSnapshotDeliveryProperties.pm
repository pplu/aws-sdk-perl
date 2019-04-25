package Paws::Config::ConfigSnapshotDeliveryProperties;
  use Moose;
  has DeliveryFrequency => (is => 'ro', isa => 'Str', request_name => 'deliveryFrequency', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ConfigSnapshotDeliveryProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::ConfigSnapshotDeliveryProperties object:

  $service_obj->Method(Att1 => { DeliveryFrequency => $value, ..., DeliveryFrequency => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::ConfigSnapshotDeliveryProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->DeliveryFrequency

=head1 DESCRIPTION

Provides options for how often AWS Config delivers configuration
snapshots to the Amazon S3 bucket in your delivery channel.

If you want to create a rule that triggers evaluations for your
resources when AWS Config delivers the configuration snapshot, see the
following:

The frequency for a rule that triggers evaluations for your resources
when AWS Config delivers the configuration snapshot is set by one of
two values, depending on which is less frequent:

=over

=item *

The value for the C<deliveryFrequency> parameter within the delivery
channel configuration, which sets how often AWS Config delivers
configuration snapshots. This value also sets how often AWS Config
invokes evaluations for AWS Config rules.

=item *

The value for the C<MaximumExecutionFrequency> parameter, which sets
the maximum frequency with which AWS Config invokes evaluations for the
rule. For more information, see ConfigRule.

=back

If the C<deliveryFrequency> value is less frequent than the
C<MaximumExecutionFrequency> value for a rule, AWS Config invokes the
rule only as often as the C<deliveryFrequency> value.

=over

=item 1.

For example, you want your rule to run evaluations when AWS Config
delivers the configuration snapshot.

=item 2.

You specify the C<MaximumExecutionFrequency> value for C<Six_Hours>.

=item 3.

You then specify the delivery channel C<deliveryFrequency> value for
C<TwentyFour_Hours>.

=item 4.

Because the value for C<deliveryFrequency> is less frequent than
C<MaximumExecutionFrequency>, AWS Config invokes evaluations for the
rule every 24 hours.

=back

You should set the C<MaximumExecutionFrequency> value to be at least as
frequent as the C<deliveryFrequency> value. You can view the
C<deliveryFrequency> value by using the C<DescribeDeliveryChannnels>
action.

To update the C<deliveryFrequency> with which AWS Config delivers your
configuration snapshots, use the C<PutDeliveryChannel> action.

=head1 ATTRIBUTES


=head2 DeliveryFrequency => Str

  The frequency with which AWS Config delivers configuration snapshots.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

