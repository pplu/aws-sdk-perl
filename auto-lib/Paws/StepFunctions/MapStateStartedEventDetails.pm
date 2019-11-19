# Generated from default/object.tt
package Paws::StepFunctions::MapStateStartedEventDetails;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::StepFunctions::Types qw//;
  has Length => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Length' => 'length'
                     },
  'types' => {
               'Length' => {
                             'type' => 'Int'
                           }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::MapStateStartedEventDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StepFunctions::MapStateStartedEventDetails object:

  $service_obj->Method(Att1 => { Length => $value, ..., Length => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StepFunctions::MapStateStartedEventDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Length

=head1 DESCRIPTION

Details about a Map state that was started.

=head1 ATTRIBUTES


=head2 Length => Int

  The size of the array for Map state iterations.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

