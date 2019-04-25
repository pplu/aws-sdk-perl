package Paws::EC2::SpotFleetRequestConfig;
  use Moose;
  has ActivityStatus => (is => 'ro', isa => 'Str', request_name => 'activityStatus', traits => ['NameInRequest']);
  has CreateTime => (is => 'ro', isa => 'Str', request_name => 'createTime', traits => ['NameInRequest']);
  has SpotFleetRequestConfig => (is => 'ro', isa => 'Paws::EC2::SpotFleetRequestConfigData', request_name => 'spotFleetRequestConfig', traits => ['NameInRequest']);
  has SpotFleetRequestId => (is => 'ro', isa => 'Str', request_name => 'spotFleetRequestId', traits => ['NameInRequest']);
  has SpotFleetRequestState => (is => 'ro', isa => 'Str', request_name => 'spotFleetRequestState', traits => ['NameInRequest']);
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

  The progress of the Spot Fleet request. If there is an error, the
status is C<error>. After all requests are placed, the status is
C<pending_fulfillment>. If the size of the fleet is equal to or greater
than its target capacity, the status is C<fulfilled>. If the size of
the fleet is decreased, the status is C<pending_termination> while Spot
Instances are terminating.


=head2 CreateTime => Str

  The creation date and time of the request.


=head2 SpotFleetRequestConfig => L<Paws::EC2::SpotFleetRequestConfigData>

  The configuration of the Spot Fleet request.


=head2 SpotFleetRequestId => Str

  The ID of the Spot Fleet request.


=head2 SpotFleetRequestState => Str

  The state of the Spot Fleet request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
