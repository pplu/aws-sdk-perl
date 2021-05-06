package Paws::IoT::EventConfigurations;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has CA_CERTIFICATE => (is => 'ro', isa => 'Paws::IoT::Configuration');
  has CERTIFICATE => (is => 'ro', isa => 'Paws::IoT::Configuration');
  has JOB => (is => 'ro', isa => 'Paws::IoT::Configuration');
  has JOB_EXECUTION => (is => 'ro', isa => 'Paws::IoT::Configuration');
  has POLICY => (is => 'ro', isa => 'Paws::IoT::Configuration');
  has THING => (is => 'ro', isa => 'Paws::IoT::Configuration');
  has THING_GROUP => (is => 'ro', isa => 'Paws::IoT::Configuration');
  has THING_GROUP_HIERARCHY => (is => 'ro', isa => 'Paws::IoT::Configuration');
  has THING_GROUP_MEMBERSHIP => (is => 'ro', isa => 'Paws::IoT::Configuration');
  has THING_TYPE => (is => 'ro', isa => 'Paws::IoT::Configuration');
  has THING_TYPE_ASSOCIATION => (is => 'ro', isa => 'Paws::IoT::Configuration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::EventConfigurations

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::EventConfigurations object:

  $service_obj->Method(Att1 => { CA_CERTIFICATE => $value, ..., THING_TYPE_ASSOCIATION => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::EventConfigurations object:

  $result = $service_obj->Method(...);
  $result->Att1->CA_CERTIFICATE

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CA_CERTIFICATE => L<Paws::IoT::Configuration>


=head2 CERTIFICATE => L<Paws::IoT::Configuration>


=head2 JOB => L<Paws::IoT::Configuration>


=head2 JOB_EXECUTION => L<Paws::IoT::Configuration>


=head2 POLICY => L<Paws::IoT::Configuration>


=head2 THING => L<Paws::IoT::Configuration>


=head2 THING_GROUP => L<Paws::IoT::Configuration>


=head2 THING_GROUP_HIERARCHY => L<Paws::IoT::Configuration>


=head2 THING_GROUP_MEMBERSHIP => L<Paws::IoT::Configuration>


=head2 THING_TYPE => L<Paws::IoT::Configuration>


=head2 THING_TYPE_ASSOCIATION => L<Paws::IoT::Configuration>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

