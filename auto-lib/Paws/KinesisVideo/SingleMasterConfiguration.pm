package Paws::KinesisVideo::SingleMasterConfiguration;
  use Moose;
  has MessageTtlSeconds => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::SingleMasterConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisVideo::SingleMasterConfiguration object:

  $service_obj->Method(Att1 => { MessageTtlSeconds => $value, ..., MessageTtlSeconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisVideo::SingleMasterConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->MessageTtlSeconds

=head1 DESCRIPTION

A structure that contains the configuration for the C<SINGLE_MASTER>
channel type.

=head1 ATTRIBUTES


=head2 MessageTtlSeconds => Int

  The period of time a signaling channel retains underlivered messages
before they are discarded.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisVideo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

