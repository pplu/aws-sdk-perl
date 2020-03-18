package Paws::IoT::ServerCertificateSummary;
  use Moose;
  has ServerCertificateArn => (is => 'ro', isa => 'Str', request_name => 'serverCertificateArn', traits => ['NameInRequest']);
  has ServerCertificateStatus => (is => 'ro', isa => 'Str', request_name => 'serverCertificateStatus', traits => ['NameInRequest']);
  has ServerCertificateStatusDetail => (is => 'ro', isa => 'Str', request_name => 'serverCertificateStatusDetail', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ServerCertificateSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::ServerCertificateSummary object:

  $service_obj->Method(Att1 => { ServerCertificateArn => $value, ..., ServerCertificateStatusDetail => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::ServerCertificateSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ServerCertificateArn

=head1 DESCRIPTION

An object that contains information about a server certificate.

=head1 ATTRIBUTES


=head2 ServerCertificateArn => Str

  The ARN of the server certificate.


=head2 ServerCertificateStatus => Str

  The status of the server certificate.


=head2 ServerCertificateStatusDetail => Str

  Details that explain the status of the server certificate.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

