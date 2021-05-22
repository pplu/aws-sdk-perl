package Paws::EC2::SpotMarketOptions;
  use Moose;
  has BlockDurationMinutes => (is => 'ro', isa => 'Int');
  has InstanceInterruptionBehavior => (is => 'ro', isa => 'Str');
  has MaxPrice => (is => 'ro', isa => 'Str');
  has SpotInstanceType => (is => 'ro', isa => 'Str');
  has ValidUntil => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SpotMarketOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::SpotMarketOptions object:

  $service_obj->Method(Att1 => { BlockDurationMinutes => $value, ..., ValidUntil => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::SpotMarketOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->BlockDurationMinutes

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 BlockDurationMinutes => Int

The required duration for the Spot Instances (also known as Spot
blocks), in minutes. This value must be a multiple of 60 (60, 120, 180,
240, 300, or 360).

The duration period starts as soon as your Spot Instance receives its
instance ID. At the end of the duration period, Amazon EC2 marks the
Spot Instance for termination and provides a Spot Instance termination
notice, which gives the instance a two-minute warning before it
terminates.

You can't specify an Availability Zone group or a launch group if you
specify a duration.

New accounts or accounts with no previous billing history with AWS are
not eligible for Spot Instances with a defined duration (also known as
Spot blocks).


=head2 InstanceInterruptionBehavior => Str

The behavior when a Spot Instance is interrupted. The default is
C<terminate>.


=head2 MaxPrice => Str

The maximum hourly price you're willing to pay for the Spot Instances.
The default is the On-Demand price.


=head2 SpotInstanceType => Str

The Spot Instance request type. For RunInstances
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances),
persistent Spot Instance requests are only supported when the instance
interruption behavior is either C<hibernate> or C<stop>.


=head2 ValidUntil => Str

The end date of the request, in UTC format
(I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z). Supported only for persistent
requests.

=over

=item *

For a persistent request, the request remains active until the
C<ValidUntil> date and time is reached. Otherwise, the request remains
active until you cancel it.

=item *

For a one-time request, C<ValidUntil> is not supported. The request
remains active until all instances launch or you cancel the request.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
