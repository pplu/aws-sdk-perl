# Generated from default/object.tt
package Paws::SecurityHub::ActionTarget;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SecurityHub::Types qw//;
  has ActionTargetArn => (is => 'ro', isa => Str, required => 1);
  has Description => (is => 'ro', isa => Str, required => 1);
  has Name => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'ActionTargetArn' => {
                                      'type' => 'Str'
                                    },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'ActionTargetArn' => 1,
                    'Description' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::ActionTarget

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::ActionTarget object:

  $service_obj->Method(Att1 => { ActionTargetArn => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::ActionTarget object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionTargetArn

=head1 DESCRIPTION

An C<ActionTarget> object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionTargetArn => Str

  The ARN for the target action.


=head2 B<REQUIRED> Description => Str

  The description of the target action.


=head2 B<REQUIRED> Name => Str

  The name of the action target.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

