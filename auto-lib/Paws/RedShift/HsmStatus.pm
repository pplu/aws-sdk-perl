package Paws::RedShift::HsmStatus;
  use Moose;
  has HsmClientCertificateIdentifier => (is => 'ro', isa => 'Str');
  has HsmConfigurationIdentifier => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::HsmStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::HsmStatus object:

  $service_obj->Method(Att1 => { HsmClientCertificateIdentifier => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::HsmStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->HsmClientCertificateIdentifier

=head1 DESCRIPTION

Describes the status of changes to HSM settings.

=head1 ATTRIBUTES


=head2 HsmClientCertificateIdentifier => Str

  Specifies the name of the HSM client certificate the Amazon Redshift
cluster uses to retrieve the data encryption keys stored in an HSM.


=head2 HsmConfigurationIdentifier => Str

  Specifies the name of the HSM configuration that contains the
information the Amazon Redshift cluster can use to retrieve and store
keys in an HSM.


=head2 Status => Str

  Reports whether the Amazon Redshift cluster has finished applying any
HSM settings changes specified in a modify cluster command.

Values: active, applying



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

