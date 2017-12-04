package Paws::MigrationHub::DiscoveredResource;
  use Moose;
  has ConfigurationId => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHub::DiscoveredResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MigrationHub::DiscoveredResource object:

  $service_obj->Method(Att1 => { ConfigurationId => $value, ..., Description => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MigrationHub::DiscoveredResource object:

  $result = $service_obj->Method(...);
  $result->Att1->ConfigurationId

=head1 DESCRIPTION

Object representing the on-premises resource being migrated.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationId => Str

  The configurationId in ADS that uniquely identifies the on-premise
resource.


=head2 Description => Str

  A description that can be free-form text to record additional detail
about the discovered resource for clarity or later reference.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MigrationHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

