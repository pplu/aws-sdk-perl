# Generated from default/object.tt
package Paws::RedShift::EventCategoriesMap;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::RedShift::Types qw/RedShift_EventInfoMap/;
  has Events => (is => 'ro', isa => ArrayRef[RedShift_EventInfoMap]);
  has SourceType => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SourceType' => {
                                 'type' => 'Str'
                               },
               'Events' => {
                             'class' => 'Paws::RedShift::EventInfoMap',
                             'type' => 'ArrayRef[RedShift_EventInfoMap]'
                           }
             },
  'NameInRequest' => {
                       'Events' => 'EventInfoMap'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::EventCategoriesMap

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::EventCategoriesMap object:

  $service_obj->Method(Att1 => { Events => $value, ..., SourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::EventCategoriesMap object:

  $result = $service_obj->Method(...);
  $result->Att1->Events

=head1 DESCRIPTION

Describes event categories.

=head1 ATTRIBUTES


=head2 Events => ArrayRef[RedShift_EventInfoMap]

  The events in the event category.


=head2 SourceType => Str

  The source type, such as cluster or cluster-snapshot, that the returned
categories belong to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

