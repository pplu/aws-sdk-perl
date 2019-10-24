# Generated from default/object.tt
package Paws::MediaConvert::OutputDetail;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::MediaConvert::Types qw/MediaConvert_VideoDetail/;
  has DurationInMs => (is => 'ro', isa => Int);
  has VideoDetails => (is => 'ro', isa => MediaConvert_VideoDetail);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DurationInMs' => {
                                   'type' => 'Int'
                                 },
               'VideoDetails' => {
                                   'class' => 'Paws::MediaConvert::VideoDetail',
                                   'type' => 'MediaConvert_VideoDetail'
                                 }
             },
  'NameInRequest' => {
                       'DurationInMs' => 'durationInMs',
                       'VideoDetails' => 'videoDetails'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::OutputDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::OutputDetail object:

  $service_obj->Method(Att1 => { DurationInMs => $value, ..., VideoDetails => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::OutputDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->DurationInMs

=head1 DESCRIPTION

Details regarding output

=head1 ATTRIBUTES


=head2 DurationInMs => Int

  Duration in milliseconds


=head2 VideoDetails => MediaConvert_VideoDetail

  Contains details about the output's video stream



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

