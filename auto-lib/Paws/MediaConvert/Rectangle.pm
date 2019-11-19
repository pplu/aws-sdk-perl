# Generated from default/object.tt
package Paws::MediaConvert::Rectangle;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::MediaConvert::Types qw//;
  has Height => (is => 'ro', isa => Int);
  has Width => (is => 'ro', isa => Int);
  has X => (is => 'ro', isa => Int);
  has Y => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Height' => {
                             'type' => 'Int'
                           },
               'Width' => {
                            'type' => 'Int'
                          },
               'X' => {
                        'type' => 'Int'
                      },
               'Y' => {
                        'type' => 'Int'
                      }
             },
  'NameInRequest' => {
                       'Y' => 'y',
                       'Height' => 'height',
                       'Width' => 'width',
                       'X' => 'x'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::Rectangle

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::Rectangle object:

  $service_obj->Method(Att1 => { Height => $value, ..., Y => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::Rectangle object:

  $result = $service_obj->Method(...);
  $result->Att1->Height

=head1 DESCRIPTION

Use Rectangle to identify a specific area of the video frame.

=head1 ATTRIBUTES


=head2 Height => Int

  Height of rectangle in pixels. Specify only even numbers.


=head2 Width => Int

  Width of rectangle in pixels. Specify only even numbers.


=head2 X => Int

  The distance, in pixels, between the rectangle and the left edge of the
video frame. Specify only even numbers.


=head2 Y => Int

  The distance, in pixels, between the rectangle and the top edge of the
video frame. Specify only even numbers.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

