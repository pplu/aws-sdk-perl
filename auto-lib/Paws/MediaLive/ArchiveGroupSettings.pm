package Paws::MediaLive::ArchiveGroupSettings;
  use Moose;
  has Destination => (is => 'ro', isa => 'Paws::MediaLive::OutputLocationRef', request_name => 'destination', traits => ['NameInRequest'], required => 1);
  has RolloverInterval => (is => 'ro', isa => 'Int', request_name => 'rolloverInterval', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ArchiveGroupSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::ArchiveGroupSettings object:

  $service_obj->Method(Att1 => { Destination => $value, ..., RolloverInterval => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::ArchiveGroupSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Destination

=head1 DESCRIPTION

Placeholder documentation for ArchiveGroupSettings

=head1 ATTRIBUTES


=head2 B<REQUIRED> Destination => L<Paws::MediaLive::OutputLocationRef>

  A directory and base filename where archive files should be written.


=head2 RolloverInterval => Int

  Number of seconds to write to archive file before closing and starting
a new one.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

