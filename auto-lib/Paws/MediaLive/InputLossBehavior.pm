package Paws::MediaLive::InputLossBehavior;
  use Moose;
  has BlackFrameMsec => (is => 'ro', isa => 'Int', request_name => 'blackFrameMsec', traits => ['NameInRequest']);
  has InputLossImageColor => (is => 'ro', isa => 'Str', request_name => 'inputLossImageColor', traits => ['NameInRequest']);
  has InputLossImageSlate => (is => 'ro', isa => 'Paws::MediaLive::InputLocation', request_name => 'inputLossImageSlate', traits => ['NameInRequest']);
  has InputLossImageType => (is => 'ro', isa => 'Str', request_name => 'inputLossImageType', traits => ['NameInRequest']);
  has RepeatFrameMsec => (is => 'ro', isa => 'Int', request_name => 'repeatFrameMsec', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::InputLossBehavior

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::InputLossBehavior object:

  $service_obj->Method(Att1 => { BlackFrameMsec => $value, ..., RepeatFrameMsec => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::InputLossBehavior object:

  $result = $service_obj->Method(...);
  $result->Att1->BlackFrameMsec

=head1 DESCRIPTION

Placeholder documentation for InputLossBehavior

=head1 ATTRIBUTES


=head2 BlackFrameMsec => Int

  Documentation update needed


=head2 InputLossImageColor => Str

  When input loss image type is "color" this field specifies the color to
use. Value: 6 hex characters representing the values of RGB.


=head2 InputLossImageSlate => L<Paws::MediaLive::InputLocation>

  When input loss image type is "slate" these fields specify the
parameters for accessing the slate.


=head2 InputLossImageType => Str

  Indicates whether to substitute a solid color or a slate into the
output after input loss exceeds blackFrameMsec.


=head2 RepeatFrameMsec => Int

  Documentation update needed



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

