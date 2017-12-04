package Paws::Discovery::CustomerConnectorInfo;
  use Moose;
  has ActiveConnectors => (is => 'ro', isa => 'Int', request_name => 'activeConnectors', traits => ['NameInRequest'], required => 1);
  has BlackListedConnectors => (is => 'ro', isa => 'Int', request_name => 'blackListedConnectors', traits => ['NameInRequest'], required => 1);
  has HealthyConnectors => (is => 'ro', isa => 'Int', request_name => 'healthyConnectors', traits => ['NameInRequest'], required => 1);
  has ShutdownConnectors => (is => 'ro', isa => 'Int', request_name => 'shutdownConnectors', traits => ['NameInRequest'], required => 1);
  has TotalConnectors => (is => 'ro', isa => 'Int', request_name => 'totalConnectors', traits => ['NameInRequest'], required => 1);
  has UnhealthyConnectors => (is => 'ro', isa => 'Int', request_name => 'unhealthyConnectors', traits => ['NameInRequest'], required => 1);
  has UnknownConnectors => (is => 'ro', isa => 'Int', request_name => 'unknownConnectors', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::CustomerConnectorInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Discovery::CustomerConnectorInfo object:

  $service_obj->Method(Att1 => { ActiveConnectors => $value, ..., UnknownConnectors => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Discovery::CustomerConnectorInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->ActiveConnectors

=head1 DESCRIPTION

Inventory data for installed discovery connectors.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActiveConnectors => Int

  Number of active discovery connectors.


=head2 B<REQUIRED> BlackListedConnectors => Int

  Number of blacklisted discovery connectors.


=head2 B<REQUIRED> HealthyConnectors => Int

  Number of healthy discovery connectors.


=head2 B<REQUIRED> ShutdownConnectors => Int

  Number of discovery connectors with status SHUTDOWN,


=head2 B<REQUIRED> TotalConnectors => Int

  Total number of discovery connectors.


=head2 B<REQUIRED> UnhealthyConnectors => Int

  Number of unhealthy discovery connectors.


=head2 B<REQUIRED> UnknownConnectors => Int

  Number of unknown discovery connectors.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

