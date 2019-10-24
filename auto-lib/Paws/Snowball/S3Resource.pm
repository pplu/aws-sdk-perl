# Generated from default/object.tt
package Paws::Snowball::S3Resource;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Snowball::Types qw/Snowball_KeyRange/;
  has BucketArn => (is => 'ro', isa => Str);
  has KeyRange => (is => 'ro', isa => Snowball_KeyRange);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BucketArn' => {
                                'type' => 'Str'
                              },
               'KeyRange' => {
                               'class' => 'Paws::Snowball::KeyRange',
                               'type' => 'Snowball_KeyRange'
                             }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::S3Resource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Snowball::S3Resource object:

  $service_obj->Method(Att1 => { BucketArn => $value, ..., KeyRange => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Snowball::S3Resource object:

  $result = $service_obj->Method(...);
  $result->Att1->BucketArn

=head1 DESCRIPTION

Each C<S3Resource> object represents an Amazon S3 bucket that your
transferred data will be exported from or imported into. For export
jobs, this object can have an optional C<KeyRange> value. The length of
the range is defined at job creation, and has either an inclusive
C<BeginMarker>, an inclusive C<EndMarker>, or both. Ranges are UTF-8
binary sorted.

=head1 ATTRIBUTES


=head2 BucketArn => Str

  The Amazon Resource Name (ARN) of an Amazon S3 bucket.


=head2 KeyRange => Snowball_KeyRange

  For export jobs, you can provide an optional C<KeyRange> within a
specific Amazon S3 bucket. The length of the range is defined at job
creation, and has either an inclusive C<BeginMarker>, an inclusive
C<EndMarker>, or both. Ranges are UTF-8 binary sorted.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

