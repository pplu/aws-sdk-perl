package Paws::ElasticTranscoder::Clip;
  use Moose;
  has TimeSpan => (is => 'ro', isa => 'Paws::ElasticTranscoder::TimeSpan');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::Clip

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticTranscoder::Clip object:

  $service_obj->Method(Att1 => { TimeSpan => $value, ..., TimeSpan => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticTranscoder::Clip object:

  $result = $service_obj->Method(...);
  $result->Att1->TimeSpan

=head1 DESCRIPTION

Settings for one clip in a composition. All jobs in a playlist must
have the same clip settings.

=head1 ATTRIBUTES


=head2 TimeSpan => L<Paws::ElasticTranscoder::TimeSpan>

  Settings that determine when a clip begins and how long it lasts.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

