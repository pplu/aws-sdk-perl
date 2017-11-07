package Paws::EMR::Configuration;
  use Moose;
  has Classification => (is => 'ro', isa => 'Str');
  has Configurations => (is => 'ro', isa => 'ArrayRef[Paws::EMR::Configuration]');
  has Properties => (is => 'ro', isa => 'Paws::EMR::StringMap');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::Configuration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::Configuration object:

  $service_obj->Method(Att1 => { Classification => $value, ..., Properties => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::Configuration object:

  $result = $service_obj->Method(...);
  $result->Att1->Classification

=head1 DESCRIPTION

Amazon EMR releases 4.x or later.

An optional configuration specification to be used when provisioning
cluster instances, which can include configurations for applications
and software bundled with Amazon EMR. A configuration consists of a
classification, properties, and optional nested configurations. A
classification refers to an application-specific configuration file.
Properties are the settings you want to change in that file. For more
information, see Configuring Applications
(http://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-configure-apps.html).

=head1 ATTRIBUTES


=head2 Classification => Str

  The classification within a configuration.


=head2 Configurations => ArrayRef[L<Paws::EMR::Configuration>]

  A list of additional configurations to apply within a configuration
object.


=head2 Properties => L<Paws::EMR::StringMap>

  A set of properties specified within a configuration classification.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

