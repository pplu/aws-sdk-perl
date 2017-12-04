package Paws::MQ::Configurations;
  use Moose;
  has Current => (is => 'ro', isa => 'Paws::MQ::ConfigurationId', request_name => 'current', traits => ['NameInRequest']);
  has History => (is => 'ro', isa => 'ArrayRef[Paws::MQ::ConfigurationId]', request_name => 'history', traits => ['NameInRequest']);
  has Pending => (is => 'ro', isa => 'Paws::MQ::ConfigurationId', request_name => 'pending', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::Configurations

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MQ::Configurations object:

  $service_obj->Method(Att1 => { Current => $value, ..., Pending => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MQ::Configurations object:

  $result = $service_obj->Method(...);
  $result->Att1->Current

=head1 DESCRIPTION

Broker configuration information

=head1 ATTRIBUTES


=head2 Current => L<Paws::MQ::ConfigurationId>

  The current configuration of the broker.


=head2 History => ArrayRef[L<Paws::MQ::ConfigurationId>]

  The history of configurations applied to the broker.


=head2 Pending => L<Paws::MQ::ConfigurationId>

  The pending configuration of the broker.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

