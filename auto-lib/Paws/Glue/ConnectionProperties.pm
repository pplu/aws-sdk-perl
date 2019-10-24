# Generated from default/map_enum.tt
package Paws::Glue::ConnectionProperties;
  use Moo;
  with 'Paws::API::MapParser';

  use MooX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw//;
  has CONFIG_FILES => (is => 'ro', isa => Str);
  has ENCRYPTED_PASSWORD => (is => 'ro', isa => Str);
  has HOST => (is => 'ro', isa => Str);
  has INSTANCE_ID => (is => 'ro', isa => Str);
  has JDBC_CONNECTION_URL => (is => 'ro', isa => Str);
  has JDBC_DRIVER_CLASS_NAME => (is => 'ro', isa => Str);
  has JDBC_DRIVER_JAR_URI => (is => 'ro', isa => Str);
  has JDBC_ENFORCE_SSL => (is => 'ro', isa => Str);
  has JDBC_ENGINE => (is => 'ro', isa => Str);
  has JDBC_ENGINE_VERSION => (is => 'ro', isa => Str);
  has PASSWORD => (is => 'ro', isa => Str);
  has PORT => (is => 'ro', isa => Str);
  has USERNAME => (is => 'ro', isa => Str);

  sub params_map {
    our $Params_map ||= {
                    types => {
                               'CONFIG_FILES' => {
                                          type => 'Str',                                        },
                               'ENCRYPTED_PASSWORD' => {
                                          type => 'Str',                                        },
                               'HOST' => {
                                          type => 'Str',                                        },
                               'INSTANCE_ID' => {
                                          type => 'Str',                                        },
                               'JDBC_CONNECTION_URL' => {
                                          type => 'Str',                                        },
                               'JDBC_DRIVER_CLASS_NAME' => {
                                          type => 'Str',                                        },
                               'JDBC_DRIVER_JAR_URI' => {
                                          type => 'Str',                                        },
                               'JDBC_ENFORCE_SSL' => {
                                          type => 'Str',                                        },
                               'JDBC_ENGINE' => {
                                          type => 'Str',                                        },
                               'JDBC_ENGINE_VERSION' => {
                                          type => 'Str',                                        },
                               'PASSWORD' => {
                                          type => 'Str',                                        },
                               'PORT' => {
                                          type => 'Str',                                        },
                               'USERNAME' => {
                                          type => 'Str',                                        },
                             },
                  };
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ConnectionProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::ConnectionProperties object:

  $service_obj->Method(Att1 => { CONFIG_FILES => $value, ..., USERNAME => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::ConnectionProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->CONFIG_FILES

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CONFIG_FILES => 


=head2 ENCRYPTED_PASSWORD => 


=head2 HOST => 


=head2 INSTANCE_ID => 


=head2 JDBC_CONNECTION_URL => 


=head2 JDBC_DRIVER_CLASS_NAME => 


=head2 JDBC_DRIVER_JAR_URI => 


=head2 JDBC_ENFORCE_SSL => 


=head2 JDBC_ENGINE => 


=head2 JDBC_ENGINE_VERSION => 


=head2 PASSWORD => 


=head2 PORT => 


=head2 USERNAME => 



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

