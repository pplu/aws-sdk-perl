# Generated from default/object.tt
package Paws::Pinpoint::RecencyDimension;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw//;
  has Duration => (is => 'ro', isa => Str, required => 1);
  has RecencyType => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Duration' => {
                               'type' => 'Str'
                             },
               'RecencyType' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'RecencyType' => 1,
                    'Duration' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::RecencyDimension

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::RecencyDimension object:

  $service_obj->Method(Att1 => { Duration => $value, ..., RecencyType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::RecencyDimension object:

  $result = $service_obj->Method(...);
  $result->Att1->Duration

=head1 DESCRIPTION

Specifies criteria for including or excluding endpoints from a segment
based on how recently an endpoint was active.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Duration => Str

  The duration to use when determining whether an endpoint is active or
inactive.


=head2 B<REQUIRED> RecencyType => Str

  The type of recency dimension to use for the segment. Valid values are:
ACTIVE, endpoints that were active within the specified duration are
included in the segment; and, INACTIVE, endpoints that weren't active
within the specified duration are included in the segment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

