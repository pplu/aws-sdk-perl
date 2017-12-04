package Paws::MediaConvert::DvbSdtSettings;
  use Moose;
  has OutputSdt => (is => 'ro', isa => 'Str', request_name => 'outputSdt', traits => ['NameInRequest']);
  has SdtInterval => (is => 'ro', isa => 'Int', request_name => 'sdtInterval', traits => ['NameInRequest']);
  has ServiceName => (is => 'ro', isa => 'Str', request_name => 'serviceName', traits => ['NameInRequest']);
  has ServiceProviderName => (is => 'ro', isa => 'Str', request_name => 'serviceProviderName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::DvbSdtSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::DvbSdtSettings object:

  $service_obj->Method(Att1 => { OutputSdt => $value, ..., ServiceProviderName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::DvbSdtSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->OutputSdt

=head1 DESCRIPTION

Inserts DVB Service Description Table (NIT) at the specified table
repetition interval.

=head1 ATTRIBUTES


=head2 OutputSdt => Str

  


=head2 SdtInterval => Int

  The number of milliseconds between instances of this table in the
output transport stream.


=head2 ServiceName => Str

  The service name placed in the service_descriptor in the Service
Description Table. Maximum length is 256 characters.


=head2 ServiceProviderName => Str

  The service provider name placed in the service_descriptor in the
Service Description Table. Maximum length is 256 characters.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

