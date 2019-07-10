package Paws::EC2::TrafficMirrorTarget;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', request_name => 'networkInterfaceId', traits => ['NameInRequest']);
  has NetworkLoadBalancerArn => (is => 'ro', isa => 'Str', request_name => 'networkLoadBalancerArn', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has TrafficMirrorTargetId => (is => 'ro', isa => 'Str', request_name => 'trafficMirrorTargetId', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TrafficMirrorTarget

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TrafficMirrorTarget object:

  $service_obj->Method(Att1 => { Description => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TrafficMirrorTarget object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Description => Str

  Information about the Traffic Mirror target.


=head2 NetworkInterfaceId => Str

  The network interface ID that is attached to the target.


=head2 NetworkLoadBalancerArn => Str

  The Amazon Resource Name (ARN) of the Network Load Balancer.


=head2 OwnerId => Str

  The ID of the account that owns the Traffic Mirror target.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

  The tags assigned to the Traffic Mirror target.


=head2 TrafficMirrorTargetId => Str

  The ID of the Traffic Mirror target.


=head2 Type => Str

  The type of Traffic Mirror target.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
