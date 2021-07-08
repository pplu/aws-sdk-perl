package Paws::EC2::NetworkCardInfo;
  use Moose;
  has MaximumNetworkInterfaces => (is => 'ro', isa => 'Int', request_name => 'maximumNetworkInterfaces', traits => ['NameInRequest']);
  has NetworkCardIndex => (is => 'ro', isa => 'Int', request_name => 'networkCardIndex', traits => ['NameInRequest']);
  has NetworkPerformance => (is => 'ro', isa => 'Str', request_name => 'networkPerformance', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::NetworkCardInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::NetworkCardInfo object:

  $service_obj->Method(Att1 => { MaximumNetworkInterfaces => $value, ..., NetworkPerformance => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::NetworkCardInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->MaximumNetworkInterfaces

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 MaximumNetworkInterfaces => Int

The maximum number of network interfaces for the network card.


=head2 NetworkCardIndex => Int

The index of the network card.


=head2 NetworkPerformance => Str

The network performance of the network card.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
