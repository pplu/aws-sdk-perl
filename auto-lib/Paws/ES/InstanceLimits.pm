package Paws::ES::InstanceLimits;
  use Moo;
  use Types::Standard qw//;
  use Paws::ES::Types qw/ES_InstanceCountLimits/;
  has InstanceCountLimits => (is => 'ro', isa => ES_InstanceCountLimits);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InstanceCountLimits' => {
                                          'class' => 'Paws::ES::InstanceCountLimits',
                                          'type' => 'ES_InstanceCountLimits'
                                        }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::InstanceLimits

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::InstanceLimits object:

  $service_obj->Method(Att1 => { InstanceCountLimits => $value, ..., InstanceCountLimits => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::InstanceLimits object:

  $result = $service_obj->Method(...);
  $result->Att1->InstanceCountLimits

=head1 DESCRIPTION

InstanceLimits represents the list of instance related attributes that
are available for given InstanceType.

=head1 ATTRIBUTES


=head2 InstanceCountLimits => ES_InstanceCountLimits

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

