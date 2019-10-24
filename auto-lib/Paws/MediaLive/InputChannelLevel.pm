# Generated from default/object.tt
package Paws::MediaLive::InputChannelLevel;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::MediaLive::Types qw//;
  has Gain => (is => 'ro', isa => Int, required => 1);
  has InputChannel => (is => 'ro', isa => Int, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Gain' => {
                           'type' => 'Int'
                         },
               'InputChannel' => {
                                   'type' => 'Int'
                                 }
             },
  'NameInRequest' => {
                       'Gain' => 'gain',
                       'InputChannel' => 'inputChannel'
                     },
  'IsRequired' => {
                    'Gain' => 1,
                    'InputChannel' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::InputChannelLevel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::InputChannelLevel object:

  $service_obj->Method(Att1 => { Gain => $value, ..., InputChannel => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::InputChannelLevel object:

  $result = $service_obj->Method(...);
  $result->Att1->Gain

=head1 DESCRIPTION

Input Channel Level

=head1 ATTRIBUTES


=head2 B<REQUIRED> Gain => Int

  Remixing value. Units are in dB and acceptable values are within the
range from -60 (mute) and 6 dB.


=head2 B<REQUIRED> InputChannel => Int

  The index of the input channel used as a source.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

