# Generated from default/object.tt
package Paws::IoT::SecurityProfileTargetMapping;
  use Moo;
  use Types::Standard qw//;
  use Paws::IoT::Types qw/IoT_SecurityProfileIdentifier IoT_SecurityProfileTarget/;
  has SecurityProfileIdentifier => (is => 'ro', isa => IoT_SecurityProfileIdentifier);
  has Target => (is => 'ro', isa => IoT_SecurityProfileTarget);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Target' => {
                             'class' => 'Paws::IoT::SecurityProfileTarget',
                             'type' => 'IoT_SecurityProfileTarget'
                           },
               'SecurityProfileIdentifier' => {
                                                'class' => 'Paws::IoT::SecurityProfileIdentifier',
                                                'type' => 'IoT_SecurityProfileIdentifier'
                                              }
             },
  'NameInRequest' => {
                       'Target' => 'target',
                       'SecurityProfileIdentifier' => 'securityProfileIdentifier'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::SecurityProfileTargetMapping

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::SecurityProfileTargetMapping object:

  $service_obj->Method(Att1 => { SecurityProfileIdentifier => $value, ..., Target => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::SecurityProfileTargetMapping object:

  $result = $service_obj->Method(...);
  $result->Att1->SecurityProfileIdentifier

=head1 DESCRIPTION

Information about a security profile and the target associated with it.

=head1 ATTRIBUTES


=head2 SecurityProfileIdentifier => IoT_SecurityProfileIdentifier

  Information that identifies the security profile.


=head2 Target => IoT_SecurityProfileTarget

  Information about the target (thing group) associated with the security
profile.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

