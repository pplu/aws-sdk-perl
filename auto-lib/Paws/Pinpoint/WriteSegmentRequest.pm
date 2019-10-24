# Generated from default/object.tt
package Paws::Pinpoint::WriteSegmentRequest;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_MapOf__string Pinpoint_SegmentGroupList Pinpoint_SegmentDimensions/;
  has Dimensions => (is => 'ro', isa => Pinpoint_SegmentDimensions);
  has Name => (is => 'ro', isa => Str);
  has SegmentGroups => (is => 'ro', isa => Pinpoint_SegmentGroupList);
  has Tags => (is => 'ro', isa => Pinpoint_MapOf__string);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SegmentGroups' => {
                                    'class' => 'Paws::Pinpoint::SegmentGroupList',
                                    'type' => 'Pinpoint_SegmentGroupList'
                                  },
               'Dimensions' => {
                                 'class' => 'Paws::Pinpoint::SegmentDimensions',
                                 'type' => 'Pinpoint_SegmentDimensions'
                               },
               'Tags' => {
                           'class' => 'Paws::Pinpoint::MapOf__string',
                           'type' => 'Pinpoint_MapOf__string'
                         },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'Tags' => 'tags'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::WriteSegmentRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::WriteSegmentRequest object:

  $service_obj->Method(Att1 => { Dimensions => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::WriteSegmentRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Dimensions

=head1 DESCRIPTION

Specifies the configuration, dimension, and other settings for a
segment. A WriteSegmentRequest object can include a Dimensions object
or a SegmentGroups object, but not both.

=head1 ATTRIBUTES


=head2 Dimensions => Pinpoint_SegmentDimensions

  The criteria that define the dimensions for the segment.


=head2 Name => Str

  The name of the segment.


=head2 SegmentGroups => Pinpoint_SegmentGroupList

  The segment group to use and the dimensions to apply to the group's
base segments in order to build the segment. A segment group can
consist of zero or more base segments. Your request can include only
one segment group.


=head2 Tags => Pinpoint_MapOf__string

  A string-to-string map of key-value pairs that defines the tags to
associate with the segment. Each tag consists of a required tag key and
an associated tag value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

