# Generated from default/object.tt
package Paws::Glue::Predicate;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::Glue::Types qw/Glue_Condition/;
  has Conditions => (is => 'ro', isa => ArrayRef[Glue_Condition]);
  has Logical => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Conditions' => {
                                 'class' => 'Paws::Glue::Condition',
                                 'type' => 'ArrayRef[Glue_Condition]'
                               },
               'Logical' => {
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

Paws::Glue::Predicate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::Predicate object:

  $service_obj->Method(Att1 => { Conditions => $value, ..., Logical => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::Predicate object:

  $result = $service_obj->Method(...);
  $result->Att1->Conditions

=head1 DESCRIPTION

Defines the predicate of the trigger, which determines when it fires.

=head1 ATTRIBUTES


=head2 Conditions => ArrayRef[Glue_Condition]

  A list of the conditions that determine when the trigger will fire.


=head2 Logical => Str

  An optional field if only one condition is listed. If multiple
conditions are listed, then this field is required.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

