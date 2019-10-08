package Paws::EC2::TrafficMirrorFilter;
  use Moo;  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::EC2::Types qw/EC2_Tag EC2_TrafficMirrorFilterRule/;
  has Description => (is => 'ro', isa => Str);
  has EgressFilterRules => (is => 'ro', isa => ArrayRef[EC2_TrafficMirrorFilterRule]);
  has IngressFilterRules => (is => 'ro', isa => ArrayRef[EC2_TrafficMirrorFilterRule]);
  has NetworkServices => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);
  has TrafficMirrorFilterId => (is => 'ro', isa => Str);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'NetworkServices' => {
                                      'type' => 'ArrayRef[Str|Undef]'
                                    },
               'TrafficMirrorFilterId' => {
                                            'type' => 'Str'
                                          },
               'Tags' => {
                           'class' => 'Paws::EC2::Tag',
                           'type' => 'ArrayRef[EC2_Tag]'
                         },
               'EgressFilterRules' => {
                                        'class' => 'Paws::EC2::TrafficMirrorFilterRule',
                                        'type' => 'ArrayRef[EC2_TrafficMirrorFilterRule]'
                                      },
               'Description' => {
                                  'type' => 'Str'
                                },
               'IngressFilterRules' => {
                                         'class' => 'Paws::EC2::TrafficMirrorFilterRule',
                                         'type' => 'ArrayRef[EC2_TrafficMirrorFilterRule]'
                                       }
             },
  'NameInRequest' => {
                       'NetworkServices' => 'networkServiceSet',
                       'TrafficMirrorFilterId' => 'trafficMirrorFilterId',
                       'Tags' => 'tagSet',
                       'EgressFilterRules' => 'egressFilterRuleSet',
                       'Description' => 'description',
                       'IngressFilterRules' => 'ingressFilterRuleSet'
                     }
}
;
      return $Params_map;
    }

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


=head2 EgressFilterRules => ArrayRef[EC2_TrafficMirrorFilterRule]

  Information about the egress rules that are associated with the Traffic
Mirror filter.


=head2 IngressFilterRules => ArrayRef[EC2_TrafficMirrorFilterRule]

  Information about the ingress rules that are associated with the
Traffic Mirror filter.


=head2 NetworkServices => ArrayRef[Str|Undef]

  The network service traffic that is associated with the Traffic Mirror
filter.


=head2 Tags => ArrayRef[EC2_Tag]

  The tags assigned to the Traffic Mirror filter.


=head2 TrafficMirrorFilterId => Str

  The ID of the Traffic Mirror filter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
