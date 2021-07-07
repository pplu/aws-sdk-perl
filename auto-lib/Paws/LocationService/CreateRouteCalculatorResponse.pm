
package Paws::LocationService::CreateRouteCalculatorResponse;
  use Moose;
  has CalculatorArn => (is => 'ro', isa => 'Str', required => 1);
  has CalculatorName => (is => 'ro', isa => 'Str', required => 1);
  has CreateTime => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::CreateRouteCalculatorResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CalculatorArn => Str

The Amazon Resource Name (ARN) for the route calculator resource. Use
the ARN when you specify a resource across all AWS.

=over

=item *

Format example:
C<arn:aws:geo:region:account-id:route-calculator/ExampleCalculator>

=back



=head2 B<REQUIRED> CalculatorName => Str

The name of the route calculator resource.

=over

=item *

For example, C<ExampleRouteCalculator>.

=back



=head2 B<REQUIRED> CreateTime => Str

The timestamp when the route calculator resource was created in ISO
8601 (https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>.

=over

=item *

For example, C<2020E<ndash>07-2T12:15:20.000Z+01:00>

=back



=head2 _request_id => Str


=cut

