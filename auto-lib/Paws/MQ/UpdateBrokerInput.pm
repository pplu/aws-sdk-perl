package Paws::MQ::UpdateBrokerInput;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::MQ::ConfigurationId', request_name => 'configuration', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::UpdateBrokerInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MQ::UpdateBrokerInput object:

  $service_obj->Method(Att1 => { Configuration => $value, ..., Configuration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MQ::UpdateBrokerInput object:

  $result = $service_obj->Method(...);
  $result->Att1->Configuration

=head1 DESCRIPTION

Updates the broker using the specified properties.

=head1 ATTRIBUTES


=head2 Configuration => L<Paws::MQ::ConfigurationId>

  A list of information about the configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

