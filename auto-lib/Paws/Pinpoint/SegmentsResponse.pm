# Generated from default/object.tt
package Paws::Pinpoint::SegmentsResponse;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_SegmentResponse/;
  has Item => (is => 'ro', isa => ArrayRef[Pinpoint_SegmentResponse], required => 1);
  has NextToken => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Item' => 1
                  },
  'types' => {
               'Item' => {
                           'class' => 'Paws::Pinpoint::SegmentResponse',
                           'type' => 'ArrayRef[Pinpoint_SegmentResponse]'
                         },
               'NextToken' => {
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

Paws::Pinpoint::SegmentsResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::SegmentsResponse object:

  $service_obj->Method(Att1 => { Item => $value, ..., NextToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::SegmentsResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->Item

=head1 DESCRIPTION

Provides information about all the segments that are associated with an
application.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Item => ArrayRef[Pinpoint_SegmentResponse]

  An array of responses, one for each segment that's associated with the
application (Segments resource) or each version of a segment that's
associated with the application (Segment Versions resource).


=head2 NextToken => Str

  The string to use in a subsequent request to get the next page of
results in a paginated response. This value is null if there are no
additional pages.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

