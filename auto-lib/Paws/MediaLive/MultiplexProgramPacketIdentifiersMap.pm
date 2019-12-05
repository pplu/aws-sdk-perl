package Paws::MediaLive::MultiplexProgramPacketIdentifiersMap;
  use Moose;
  has AudioPids => (is => 'ro', isa => 'ArrayRef[Int]', request_name => 'audioPids', traits => ['NameInRequest']);
  has DvbSubPids => (is => 'ro', isa => 'ArrayRef[Int]', request_name => 'dvbSubPids', traits => ['NameInRequest']);
  has DvbTeletextPid => (is => 'ro', isa => 'Int', request_name => 'dvbTeletextPid', traits => ['NameInRequest']);
  has EtvPlatformPid => (is => 'ro', isa => 'Int', request_name => 'etvPlatformPid', traits => ['NameInRequest']);
  has EtvSignalPid => (is => 'ro', isa => 'Int', request_name => 'etvSignalPid', traits => ['NameInRequest']);
  has KlvDataPids => (is => 'ro', isa => 'ArrayRef[Int]', request_name => 'klvDataPids', traits => ['NameInRequest']);
  has PcrPid => (is => 'ro', isa => 'Int', request_name => 'pcrPid', traits => ['NameInRequest']);
  has PmtPid => (is => 'ro', isa => 'Int', request_name => 'pmtPid', traits => ['NameInRequest']);
  has PrivateMetadataPid => (is => 'ro', isa => 'Int', request_name => 'privateMetadataPid', traits => ['NameInRequest']);
  has Scte27Pids => (is => 'ro', isa => 'ArrayRef[Int]', request_name => 'scte27Pids', traits => ['NameInRequest']);
  has Scte35Pid => (is => 'ro', isa => 'Int', request_name => 'scte35Pid', traits => ['NameInRequest']);
  has TimedMetadataPid => (is => 'ro', isa => 'Int', request_name => 'timedMetadataPid', traits => ['NameInRequest']);
  has VideoPid => (is => 'ro', isa => 'Int', request_name => 'videoPid', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::MultiplexProgramPacketIdentifiersMap

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::MultiplexProgramPacketIdentifiersMap object:

  $service_obj->Method(Att1 => { AudioPids => $value, ..., VideoPid => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::MultiplexProgramPacketIdentifiersMap object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioPids

=head1 DESCRIPTION

Packet identifiers map for a given Multiplex program.

=head1 ATTRIBUTES


=head2 AudioPids => ArrayRef[Int]

  


=head2 DvbSubPids => ArrayRef[Int]

  


=head2 DvbTeletextPid => Int

  


=head2 EtvPlatformPid => Int

  


=head2 EtvSignalPid => Int

  


=head2 KlvDataPids => ArrayRef[Int]

  


=head2 PcrPid => Int

  


=head2 PmtPid => Int

  


=head2 PrivateMetadataPid => Int

  


=head2 Scte27Pids => ArrayRef[Int]

  


=head2 Scte35Pid => Int

  


=head2 TimedMetadataPid => Int

  


=head2 VideoPid => Int

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

