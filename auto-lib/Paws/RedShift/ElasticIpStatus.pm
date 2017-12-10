package Paws::RedShift::ElasticIpStatus;
  use Moose;
  has ElasticIp => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ElasticIpStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::ElasticIpStatus object:

  $service_obj->Method(Att1 => { ElasticIp => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::ElasticIpStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->ElasticIp

=head1 DESCRIPTION

Describes the status of the elastic IP (EIP) address.

=head1 ATTRIBUTES


=head2 ElasticIp => Str

  The elastic IP (EIP) address for the cluster.


=head2 Status => Str

  The status of the elastic IP (EIP) address.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

