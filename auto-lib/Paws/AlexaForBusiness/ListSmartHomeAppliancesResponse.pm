
package Paws::AlexaForBusiness::ListSmartHomeAppliancesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SmartHomeAppliances => (is => 'ro', isa => 'ArrayRef[Paws::AlexaForBusiness::SmartHomeAppliance]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::ListSmartHomeAppliancesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The tokens used for pagination.


=head2 SmartHomeAppliances => ArrayRef[L<Paws::AlexaForBusiness::SmartHomeAppliance>]

The smart home appliances.


=head2 _request_id => Str


=cut

1;