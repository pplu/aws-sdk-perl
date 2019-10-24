# Generated from default/object.tt
package Paws::Pinpoint::SegmentReference;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Pinpoint::Types qw//;
  has Id => (is => 'ro', isa => Str, required => 1);
  has Version => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Version' => {
                              'type' => 'Int'
                            },
               'Id' => {
                         'type' => 'Str'
                       }
             },
  'IsRequired' => {
                    'Id' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::SegmentReference

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::SegmentReference object:

  $service_obj->Method(Att1 => { Id => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::SegmentReference object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

Specifies the segment identifier and version of a segment.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

  The unique identifier for the segment.


=head2 Version => Int

  The version number of the segment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

