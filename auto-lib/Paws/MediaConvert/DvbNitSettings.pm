package Paws::MediaConvert::DvbNitSettings;
  use Moose;
  has NetworkId => (is => 'ro', isa => 'Int', request_name => 'networkId', traits => ['NameInRequest']);
  has NetworkName => (is => 'ro', isa => 'Str', request_name => 'networkName', traits => ['NameInRequest']);
  has NitInterval => (is => 'ro', isa => 'Int', request_name => 'nitInterval', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::DvbNitSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::DvbNitSettings object:

  $service_obj->Method(Att1 => { NetworkId => $value, ..., NitInterval => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::DvbNitSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->NetworkId

=head1 DESCRIPTION

Inserts DVB Network Information Table (NIT) at the specified table
repetition interval.

=head1 ATTRIBUTES


=head2 NetworkId => Int

  The numeric value placed in the Network Information Table (NIT).


=head2 NetworkName => Str

  The network name text placed in the network_name_descriptor inside the
Network Information Table. Maximum length is 256 characters.


=head2 NitInterval => Int

  The number of milliseconds between instances of this table in the
output transport stream.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

