package Paws::EC2::LaunchTemplateSpotMarketOptions;
  use Moo;  use Types::Standard qw/Int Str/;
  use Paws::EC2::Types qw//;
  has BlockDurationMinutes => (is => 'ro', isa => Int);
  has InstanceInterruptionBehavior => (is => 'ro', isa => Str);
  has MaxPrice => (is => 'ro', isa => Str);
  has SpotInstanceType => (is => 'ro', isa => Str);
  has ValidUntil => (is => 'ro', isa => Str);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'InstanceInterruptionBehavior' => {
                                                   'type' => 'Str'
                                                 },
               'SpotInstanceType' => {
                                       'type' => 'Str'
                                     },
               'MaxPrice' => {
                               'type' => 'Str'
                             },
               'BlockDurationMinutes' => {
                                           'type' => 'Int'
                                         },
               'ValidUntil' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'InstanceInterruptionBehavior' => 'instanceInterruptionBehavior',
                       'SpotInstanceType' => 'spotInstanceType',
                       'MaxPrice' => 'maxPrice',
                       'BlockDurationMinutes' => 'blockDurationMinutes',
                       'ValidUntil' => 'validUntil'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::LaunchTemplateSpotMarketOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::LaunchTemplateSpotMarketOptions object:

  $service_obj->Method(Att1 => { BlockDurationMinutes => $value, ..., ValidUntil => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::LaunchTemplateSpotMarketOptions object:

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

  The behavior when a Spot Instance is interrupted.


=head2 MaxPrice => Str

  The maximum hourly price you're willing to pay for the Spot Instances.


=head2 SpotInstanceType => Str

  The Spot Instance request type.


=head2 ValidUntil => Str

  The end date of the request. For a one-time request, the request
remains active until all instances launch, the request is canceled, or
this date is reached. If the request is persistent, it remains active
until it is canceled or this date and time is reached.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
