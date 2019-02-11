package Paws::Glue::ConnectionProperties;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has CONFIG_FILES => (is => 'ro', isa => 'Str');
  has ENCRYPTED_PASSWORD => (is => 'ro', isa => 'Str');
  has HOST => (is => 'ro', isa => 'Str');
  has INSTANCE_ID => (is => 'ro', isa => 'Str');
  has JDBC_CONNECTION_URL => (is => 'ro', isa => 'Str');
  has JDBC_DRIVER_CLASS_NAME => (is => 'ro', isa => 'Str');
  has JDBC_DRIVER_JAR_URI => (is => 'ro', isa => 'Str');
  has JDBC_ENFORCE_SSL => (is => 'ro', isa => 'Str');
  has JDBC_ENGINE => (is => 'ro', isa => 'Str');
  has JDBC_ENGINE_VERSION => (is => 'ro', isa => 'Str');
  has PASSWORD => (is => 'ro', isa => 'Str');
  has PORT => (is => 'ro', isa => 'Str');
  has USERNAME => (is => 'ro', isa => 'Str');
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


=head2 CONFIG_FILES => Str


=head2 ENCRYPTED_PASSWORD => Str


=head2 HOST => Str


=head2 INSTANCE_ID => Str


=head2 JDBC_CONNECTION_URL => Str


=head2 JDBC_DRIVER_CLASS_NAME => Str


=head2 JDBC_DRIVER_JAR_URI => Str


=head2 JDBC_ENFORCE_SSL => Str


=head2 JDBC_ENGINE => Str


=head2 JDBC_ENGINE_VERSION => Str


=head2 PASSWORD => Str


=head2 PORT => Str


=head2 USERNAME => Str



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

