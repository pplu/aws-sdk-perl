package Paws::EC2::TrafficMirrorFilter;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has EgressFilterRules => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TrafficMirrorFilterRule]', request_name => 'egressFilterRuleSet', traits => ['NameInRequest']);
  has IngressFilterRules => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TrafficMirrorFilterRule]', request_name => 'ingressFilterRuleSet', traits => ['NameInRequest']);
  has NetworkServices => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'networkServiceSet', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has TrafficMirrorFilterId => (is => 'ro', isa => 'Str', request_name => 'trafficMirrorFilterId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TrafficMirrorFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TrafficMirrorFilter object:

  $service_obj->Method(Att1 => { Description => $value, ..., TrafficMirrorFilterId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TrafficMirrorFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Description => Str

The description of the Traffic Mirror filter.


=head2 EgressFilterRules => ArrayRef[L<Paws::EC2::TrafficMirrorFilterRule>]

Information about the egress rules that are associated with the Traffic
Mirror filter.


=head2 IngressFilterRules => ArrayRef[L<Paws::EC2::TrafficMirrorFilterRule>]

Information about the ingress rules that are associated with the
Traffic Mirror filter.


=head2 NetworkServices => ArrayRef[Str|Undef]

The network service traffic that is associated with the Traffic Mirror
filter.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The tags assigned to the Traffic Mirror filter.


=head2 TrafficMirrorFilterId => Str

The ID of the Traffic Mirror filter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
