# Generated from default/object.tt
package Paws::MediaLive::CreateInputSecurityGroupResultModel;
  use Moo;
  use Types::Standard qw//;
  use Paws::MediaLive::Types qw/MediaLive_InputSecurityGroup/;
  has SecurityGroup => (is => 'ro', isa => MediaLive_InputSecurityGroup);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SecurityGroup' => {
                                    'type' => 'MediaLive_InputSecurityGroup',
                                    'class' => 'Paws::MediaLive::InputSecurityGroup'
                                  }
             },
  'NameInRequest' => {
                       'SecurityGroup' => 'securityGroup'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::CreateInputSecurityGroupResultModel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::CreateInputSecurityGroupResultModel object:

  $service_obj->Method(Att1 => { SecurityGroup => $value, ..., SecurityGroup => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::CreateInputSecurityGroupResultModel object:

  $result = $service_obj->Method(...);
  $result->Att1->SecurityGroup

=head1 DESCRIPTION

Placeholder documentation for CreateInputSecurityGroupResultModel

=head1 ATTRIBUTES


=head2 SecurityGroup => MediaLive_InputSecurityGroup

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

