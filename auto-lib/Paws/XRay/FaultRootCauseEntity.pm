# Generated from default/object.tt
package Paws::XRay::FaultRootCauseEntity;
  use Moo;
  use Types::Standard qw/ArrayRef Str Bool/;
  use Paws::XRay::Types qw/XRay_RootCauseException/;
  has Exceptions => (is => 'ro', isa => ArrayRef[XRay_RootCauseException]);
  has Name => (is => 'ro', isa => Str);
  has Remote => (is => 'ro', isa => Bool);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Remote' => {
                             'type' => 'Bool'
                           },
               'Exceptions' => {
                                 'class' => 'Paws::XRay::RootCauseException',
                                 'type' => 'ArrayRef[XRay_RootCauseException]'
                               },
               'Name' => {
                           'type' => 'Str'
                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::FaultRootCauseEntity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::XRay::FaultRootCauseEntity object:

  $service_obj->Method(Att1 => { Exceptions => $value, ..., Remote => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::XRay::FaultRootCauseEntity object:

  $result = $service_obj->Method(...);
  $result->Att1->Exceptions

=head1 DESCRIPTION

A collection of segments and corresponding subsegments associated to a
trace summary fault error.

=head1 ATTRIBUTES


=head2 Exceptions => ArrayRef[XRay_RootCauseException]

  The types and messages of the exceptions.


=head2 Name => Str

  The name of the entity.


=head2 Remote => Bool

  A flag that denotes a remote subsegment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

