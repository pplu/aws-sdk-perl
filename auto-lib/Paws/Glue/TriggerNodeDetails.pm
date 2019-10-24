# Generated from default/object.tt
package Paws::Glue::TriggerNodeDetails;
  use Moo;
  use Types::Standard qw//;
  use Paws::Glue::Types qw/Glue_Trigger/;
  has Trigger => (is => 'ro', isa => Glue_Trigger);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Trigger' => {
                              'class' => 'Paws::Glue::Trigger',
                              'type' => 'Glue_Trigger'
                            }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::TriggerNodeDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::TriggerNodeDetails object:

  $service_obj->Method(Att1 => { Trigger => $value, ..., Trigger => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::TriggerNodeDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Trigger

=head1 DESCRIPTION

The details of a Trigger node present in the workflow.

=head1 ATTRIBUTES


=head2 Trigger => Glue_Trigger

  The information of the trigger represented by the trigger node.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

