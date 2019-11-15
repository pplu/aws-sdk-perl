package Paws::IoT::UpdateDeviceCertificateParams;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', request_name => 'action', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateDeviceCertificateParams

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::UpdateDeviceCertificateParams object:

  $service_obj->Method(Att1 => { Action => $value, ..., Action => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::UpdateDeviceCertificateParams object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Parameters to define a mitigation action that changes the state of the
device certificate to inactive.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

  The action that you want to apply to the device cerrtificate. The only
supported value is C<DEACTIVATE>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

