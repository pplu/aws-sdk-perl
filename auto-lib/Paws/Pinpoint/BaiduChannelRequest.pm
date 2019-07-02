package Paws::Pinpoint::BaiduChannelRequest;
  use Moose;
  has ApiKey => (is => 'ro', isa => 'Str', required => 1);
  has Enabled => (is => 'ro', isa => 'Bool');
  has SecretKey => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::BaiduChannelRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::BaiduChannelRequest object:

  $service_obj->Method(Att1 => { ApiKey => $value, ..., SecretKey => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::BaiduChannelRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->ApiKey

=head1 DESCRIPTION

Specifies the status and settings of the Baidu (Baidu Cloud Push)
channel for an application.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiKey => Str

  The API key that you received from the Baidu Cloud Push service to
communicate with the service.


=head2 Enabled => Bool

  Specifies whether to enable the Baidu channel for the application.


=head2 B<REQUIRED> SecretKey => Str

  The secret key that you received from the Baidu Cloud Push service to
communicate with the service.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

