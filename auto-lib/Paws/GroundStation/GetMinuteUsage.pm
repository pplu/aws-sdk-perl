
package Paws::GroundStation::GetMinuteUsage;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::GroundStation::Types qw//;
  has Month => (is => 'ro', isa => Int, required => 1, predicate => 1);
  has Year => (is => 'ro', isa => Int, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetMinuteUsage');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/minute-usage');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::GroundStation::GetMinuteUsageResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Year' => {
                           'type' => 'Int'
                         },
               'Month' => {
                            'type' => 'Int'
                          }
             },
  'IsRequired' => {
                    'Year' => 1,
                    'Month' => 1
                  },
  'NameInRequest' => {
                       'Year' => 'year',
                       'Month' => 'month'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::GetMinuteUsage - Arguments for method GetMinuteUsage on L<Paws::GroundStation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMinuteUsage on the
L<AWS Ground Station|Paws::GroundStation> service. Use the attributes of this class
as arguments to method GetMinuteUsage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMinuteUsage.

=head1 SYNOPSIS

    my $groundstation = Paws->service('GroundStation');
    my $GetMinuteUsageResponse = $groundstation->GetMinuteUsage(
      Month => 1,
      Year  => 1,

    );

    # Results:
    my $EstimatedMinutesRemaining =
      $GetMinuteUsageResponse->EstimatedMinutesRemaining;
    my $IsReservedMinutesCustomer =
      $GetMinuteUsageResponse->IsReservedMinutesCustomer;
    my $TotalReservedMinuteAllocation =
      $GetMinuteUsageResponse->TotalReservedMinuteAllocation;
    my $TotalScheduledMinutes = $GetMinuteUsageResponse->TotalScheduledMinutes;
    my $UpcomingMinutesScheduled =
      $GetMinuteUsageResponse->UpcomingMinutesScheduled;

    # Returns a L<Paws::GroundStation::GetMinuteUsageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/groundstation/GetMinuteUsage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Month => Int

The month being requested, with a value of 1-12.



=head2 B<REQUIRED> Year => Int

The year being requested, in the format of YYYY.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMinuteUsage in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

