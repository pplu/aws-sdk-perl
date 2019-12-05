package Paws::MediaLive::UpdateMultiplex;
  use Moose;
  has MultiplexSettings => (is => 'ro', isa => 'Paws::MediaLive::MultiplexSettings', request_name => 'multiplexSettings', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::UpdateMultiplex

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::UpdateMultiplex object:

  $service_obj->Method(Att1 => { MultiplexSettings => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::UpdateMultiplex object:

  $result = $service_obj->Method(...);
  $result->Att1->MultiplexSettings

=head1 DESCRIPTION

Placeholder documentation for UpdateMultiplex

=head1 ATTRIBUTES


=head2 MultiplexSettings => L<Paws::MediaLive::MultiplexSettings>

  The new settings for a multiplex.


=head2 Name => Str

  Name of the multiplex.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

