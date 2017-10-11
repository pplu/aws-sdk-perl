
package Paws::ELBv2::AddListenerCertificates;
  use Moose;
  has Certificates => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::Certificate]', required => 1);
  has ListenerArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddListenerCertificates');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::AddListenerCertificatesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'AddListenerCertificatesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::AddListenerCertificates - Arguments for method AddListenerCertificates on Paws::ELBv2

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddListenerCertificates on the 
Elastic Load Balancing service. Use the attributes of this class
as arguments to method AddListenerCertificates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddListenerCertificates.

As an example:

  $service_obj->AddListenerCertificates(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Certificates => ArrayRef[L<Paws::ELBv2::Certificate>]

The certificate to add. You can specify one certificate per call.



=head2 B<REQUIRED> ListenerArn => Str

The Amazon Resource Name (ARN) of the listener.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddListenerCertificates in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

