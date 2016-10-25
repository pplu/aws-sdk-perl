package Paws::EC2::SpotFleetRequestConfig;
  use Moose;
  has ActivityStatus => (is => 'ro', isa => 'Str', xmlname => 'activityStatus', traits => ['Unwrapped']);
  has CreateTime => (is => 'ro', isa => 'Str', xmlname => 'createTime', traits => ['Unwrapped'], required => 1);
  has SpotFleetRequestConfig => (is => 'ro', isa => 'Paws::EC2::SpotFleetRequestConfigData', xmlname => 'spotFleetRequestConfig', traits => ['Unwrapped'], required => 1);
  has SpotFleetRequestId => (is => 'ro', isa => 'Str', xmlname => 'spotFleetRequestId', traits => ['Unwrapped'], required => 1);
  has SpotFleetRequestState => (is => 'ro', isa => 'Str', xmlname => 'spotFleetRequestState', traits => ['Unwrapped'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SpotFleetRequestConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::SpotFleetRequestConfig object:

  $service_obj->Method(Att1 => { ActivityStatus => $value, ..., SpotFleetRequestState => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::SpotFleetRequestConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->ActivityStatus

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ActivityStatus => Str

  The progress of the Spot fleet request. If there is an error, the
status is C<error>. After all bids are placed, the status is
C<pending_fulfillment>. If the size of the fleet is equal to or greater
than its target capacity, the status is C<fulfilled>. If the size of
the fleet is decreased, the status is C<pending_termination> while Spot
instances are terminating.


=head2 B<REQUIRED> CreateTime => Str

  The creation date and time of the request.


=head2 B<REQUIRED> SpotFleetRequestConfig => L<Paws::EC2::SpotFleetRequestConfigData>

  Information about the configuration of the Spot fleet request.


=head2 B<REQUIRED> SpotFleetRequestId => Str

  The ID of the Spot fleet request.


=head2 B<REQUIRED> SpotFleetRequestState => Str

  The state of the Spot fleet request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
