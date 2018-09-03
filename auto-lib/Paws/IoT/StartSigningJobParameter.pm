package Paws::IoT::StartSigningJobParameter;
  use Moose;
  has Destination => (is => 'ro', isa => 'Paws::IoT::Destination', request_name => 'destination', traits => ['NameInRequest']);
  has SigningProfileName => (is => 'ro', isa => 'Str', request_name => 'signingProfileName', traits => ['NameInRequest']);
  has SigningProfileParameter => (is => 'ro', isa => 'Paws::IoT::SigningProfileParameter', request_name => 'signingProfileParameter', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::StartSigningJobParameter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::StartSigningJobParameter object:

  $service_obj->Method(Att1 => { Destination => $value, ..., SigningProfileParameter => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::StartSigningJobParameter object:

  $result = $service_obj->Method(...);
  $result->Att1->Destination

=head1 DESCRIPTION

Information required to start a signing job.

=head1 ATTRIBUTES


=head2 Destination => L<Paws::IoT::Destination>

  The location to write the code-signed file.


=head2 SigningProfileName => Str

  The code-signing profile name.


=head2 SigningProfileParameter => L<Paws::IoT::SigningProfileParameter>

  Describes the code-signing profile.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

