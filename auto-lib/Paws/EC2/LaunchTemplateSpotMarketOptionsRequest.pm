package Paws::EC2::LaunchTemplateSpotMarketOptionsRequest;
  use Moose;
  has BlockDurationMinutes => (is => 'ro', isa => 'Int');
  has InstanceInterruptionBehavior => (is => 'ro', isa => 'Str');
  has MaxPrice => (is => 'ro', isa => 'Str');
  has SpotInstanceType => (is => 'ro', isa => 'Str');
  has ValidUntil => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::LaunchTemplateSpotMarketOptionsRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::LaunchTemplateSpotMarketOptionsRequest object:

  $service_obj->Method(Att1 => { BlockDurationMinutes => $value, ..., ValidUntil => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::LaunchTemplateSpotMarketOptionsRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->BlockDurationMinutes

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 BlockDurationMinutes => Int

  The required duration for the Spot Instances (also known as Spot
blocks), in minutes. This value must be a multiple of 60 (60, 120, 180,
240, 300, or 360).


=head2 InstanceInterruptionBehavior => Str

  The behavior when a Spot Instance is interrupted. The default is
C<terminate>.


=head2 MaxPrice => Str

  The maximum hourly price you're willing to pay for the Spot Instances.


=head2 SpotInstanceType => Str

  The Spot Instance request type.


=head2 ValidUntil => Str

  The end date of the request. For a one-time request, the request
remains active until all instances launch, the request is canceled, or
this date is reached. If the request is persistent, it remains active
until it is canceled or this date and time is reached. The default end
date is 7 days from the current date.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
