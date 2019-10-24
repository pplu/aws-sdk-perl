package Paws::EC2::InstanceStateChange;
  use Moo;  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_InstanceState/;
  has CurrentState => (is => 'ro', isa => EC2_InstanceState);
  has InstanceId => (is => 'ro', isa => Str);
  has PreviousState => (is => 'ro', isa => EC2_InstanceState);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PreviousState' => {
                                    'class' => 'Paws::EC2::InstanceState',
                                    'type' => 'EC2_InstanceState'
                                  },
               'InstanceId' => {
                                 'type' => 'Str'
                               },
               'CurrentState' => {
                                   'class' => 'Paws::EC2::InstanceState',
                                   'type' => 'EC2_InstanceState'
                                 }
             },
  'NameInRequest' => {
                       'PreviousState' => 'previousState',
                       'InstanceId' => 'instanceId',
                       'CurrentState' => 'currentState'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InstanceStateChange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::InstanceStateChange object:

  $service_obj->Method(Att1 => { CurrentState => $value, ..., PreviousState => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::InstanceStateChange object:

  $result = $service_obj->Method(...);
  $result->Att1->CurrentState

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CurrentState => EC2_InstanceState

  The current state of the instance.


=head2 InstanceId => Str

  The ID of the instance.


=head2 PreviousState => EC2_InstanceState

  The previous state of the instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
