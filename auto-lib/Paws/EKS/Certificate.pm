package Paws::EKS::Certificate;
  use Moose;
  has Data => (is => 'ro', isa => 'Str', request_name => 'data', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::Certificate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EKS::Certificate object:

  $service_obj->Method(Att1 => { Data => $value, ..., Data => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EKS::Certificate object:

  $result = $service_obj->Method(...);
  $result->Att1->Data

=head1 DESCRIPTION

An object representing the C<certificate-authority-data> for your
cluster.

=head1 ATTRIBUTES


=head2 Data => Str

  The base64 encoded certificate data required to communicate with your
cluster. Add this to the C<certificate-authority-data> section of the
C<kubeconfig> file for your cluster.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

