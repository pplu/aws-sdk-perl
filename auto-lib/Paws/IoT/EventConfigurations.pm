# Generated from default/map_enum.tt
package Paws::IoT::EventConfigurations;
  use Moo;
  with 'Paws::API::MapParser';

  use MooX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');
  use Types::Standard qw//;
  use Paws::IoT::Types qw/IoT_Configuration/;
  has CA_CERTIFICATE => (is => 'ro', isa => IoT_Configuration);
  has CERTIFICATE => (is => 'ro', isa => IoT_Configuration);
  has JOB => (is => 'ro', isa => IoT_Configuration);
  has JOB_EXECUTION => (is => 'ro', isa => IoT_Configuration);
  has POLICY => (is => 'ro', isa => IoT_Configuration);
  has THING => (is => 'ro', isa => IoT_Configuration);
  has THING_GROUP => (is => 'ro', isa => IoT_Configuration);
  has THING_GROUP_HIERARCHY => (is => 'ro', isa => IoT_Configuration);
  has THING_GROUP_MEMBERSHIP => (is => 'ro', isa => IoT_Configuration);
  has THING_TYPE => (is => 'ro', isa => IoT_Configuration);
  has THING_TYPE_ASSOCIATION => (is => 'ro', isa => IoT_Configuration);

  sub params_map {
    our $Params_map ||= {
                    types => {
                               'CA_CERTIFICATE' => {
                                          type => 'IoT_Configuration',                                          class => 'Paws::IoT::Configuration',                                        },
                               'CERTIFICATE' => {
                                          type => 'IoT_Configuration',                                          class => 'Paws::IoT::Configuration',                                        },
                               'JOB' => {
                                          type => 'IoT_Configuration',                                          class => 'Paws::IoT::Configuration',                                        },
                               'JOB_EXECUTION' => {
                                          type => 'IoT_Configuration',                                          class => 'Paws::IoT::Configuration',                                        },
                               'POLICY' => {
                                          type => 'IoT_Configuration',                                          class => 'Paws::IoT::Configuration',                                        },
                               'THING' => {
                                          type => 'IoT_Configuration',                                          class => 'Paws::IoT::Configuration',                                        },
                               'THING_GROUP' => {
                                          type => 'IoT_Configuration',                                          class => 'Paws::IoT::Configuration',                                        },
                               'THING_GROUP_HIERARCHY' => {
                                          type => 'IoT_Configuration',                                          class => 'Paws::IoT::Configuration',                                        },
                               'THING_GROUP_MEMBERSHIP' => {
                                          type => 'IoT_Configuration',                                          class => 'Paws::IoT::Configuration',                                        },
                               'THING_TYPE' => {
                                          type => 'IoT_Configuration',                                          class => 'Paws::IoT::Configuration',                                        },
                               'THING_TYPE_ASSOCIATION' => {
                                          type => 'IoT_Configuration',                                          class => 'Paws::IoT::Configuration',                                        },
                             },
                  };
    return $Params_map;
  }

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


=head2 CA_CERTIFICATE => 


=head2 CERTIFICATE => 


=head2 JOB => 


=head2 JOB_EXECUTION => 


=head2 POLICY => 


=head2 THING => 


=head2 THING_GROUP => 


=head2 THING_GROUP_HIERARCHY => 


=head2 THING_GROUP_MEMBERSHIP => 


=head2 THING_TYPE => 


=head2 THING_TYPE_ASSOCIATION => 



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

