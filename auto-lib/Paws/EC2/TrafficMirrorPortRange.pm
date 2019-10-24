package Paws::EC2::TrafficMirrorPortRange;
  use Moo;  use Types::Standard qw/Int/;
  use Paws::EC2::Types qw//;
  has FromPort => (is => 'ro', isa => Int);
  has ToPort => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ToPort' => {
                             'type' => 'Int'
                           },
               'FromPort' => {
                               'type' => 'Int'
                             }
             },
  'NameInRequest' => {
                       'ToPort' => 'toPort',
                       'FromPort' => 'fromPort'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TrafficMirrorPortRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TrafficMirrorPortRange object:

  $service_obj->Method(Att1 => { FromPort => $value, ..., ToPort => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TrafficMirrorPortRange object:

  $result = $service_obj->Method(...);
  $result->Att1->FromPort

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 FromPort => Int

  The start of the Traffic Mirror port range. This applies to the TCP and
UDP protocols.


=head2 ToPort => Int

  The end of the Traffic Mirror port range. This applies to the TCP and
UDP protocols.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
