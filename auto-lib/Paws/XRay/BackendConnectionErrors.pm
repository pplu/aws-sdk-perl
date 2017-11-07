package Paws::XRay::BackendConnectionErrors;
  use Moose;
  has ConnectionRefusedCount => (is => 'ro', isa => 'Int');
  has HTTPCode4XXCount => (is => 'ro', isa => 'Int');
  has HTTPCode5XXCount => (is => 'ro', isa => 'Int');
  has OtherCount => (is => 'ro', isa => 'Int');
  has TimeoutCount => (is => 'ro', isa => 'Int');
  has UnknownHostCount => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::BackendConnectionErrors

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::XRay::BackendConnectionErrors object:

  $service_obj->Method(Att1 => { ConnectionRefusedCount => $value, ..., UnknownHostCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::XRay::BackendConnectionErrors object:

  $result = $service_obj->Method(...);
  $result->Att1->ConnectionRefusedCount

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ConnectionRefusedCount => Int

  


=head2 HTTPCode4XXCount => Int

  


=head2 HTTPCode5XXCount => Int

  


=head2 OtherCount => Int

  


=head2 TimeoutCount => Int

  


=head2 UnknownHostCount => Int

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

