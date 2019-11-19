# Generated from default/map_enum.tt
package Paws::OpsWorks::LayerAttributes;
  use Moo;
  with 'Paws::API::MapParser';

  use MooX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');
  use Types::Standard qw/Str/;
  use Paws::OpsWorks::Types qw//;
  has BundlerVersion => (is => 'ro', isa => Str);
  has EcsClusterArn => (is => 'ro', isa => Str);
  has EnableHaproxyStats => (is => 'ro', isa => Str);
  has GangliaPassword => (is => 'ro', isa => Str);
  has GangliaUrl => (is => 'ro', isa => Str);
  has GangliaUser => (is => 'ro', isa => Str);
  has HaproxyHealthCheckMethod => (is => 'ro', isa => Str);
  has HaproxyHealthCheckUrl => (is => 'ro', isa => Str);
  has HaproxyStatsPassword => (is => 'ro', isa => Str);
  has HaproxyStatsUrl => (is => 'ro', isa => Str);
  has HaproxyStatsUser => (is => 'ro', isa => Str);
  has JavaAppServer => (is => 'ro', isa => Str);
  has JavaAppServerVersion => (is => 'ro', isa => Str);
  has Jvm => (is => 'ro', isa => Str);
  has JvmOptions => (is => 'ro', isa => Str);
  has JvmVersion => (is => 'ro', isa => Str);
  has ManageBundler => (is => 'ro', isa => Str);
  has MemcachedMemory => (is => 'ro', isa => Str);
  has MysqlRootPassword => (is => 'ro', isa => Str);
  has MysqlRootPasswordUbiquitous => (is => 'ro', isa => Str);
  has NodejsVersion => (is => 'ro', isa => Str);
  has PassengerVersion => (is => 'ro', isa => Str);
  has RailsStack => (is => 'ro', isa => Str);
  has RubygemsVersion => (is => 'ro', isa => Str);
  has RubyVersion => (is => 'ro', isa => Str);

  sub params_map {
    our $Params_map ||= {
                    types => {
                               'BundlerVersion' => {
                                          type => 'Str',                                        },
                               'EcsClusterArn' => {
                                          type => 'Str',                                        },
                               'EnableHaproxyStats' => {
                                          type => 'Str',                                        },
                               'GangliaPassword' => {
                                          type => 'Str',                                        },
                               'GangliaUrl' => {
                                          type => 'Str',                                        },
                               'GangliaUser' => {
                                          type => 'Str',                                        },
                               'HaproxyHealthCheckMethod' => {
                                          type => 'Str',                                        },
                               'HaproxyHealthCheckUrl' => {
                                          type => 'Str',                                        },
                               'HaproxyStatsPassword' => {
                                          type => 'Str',                                        },
                               'HaproxyStatsUrl' => {
                                          type => 'Str',                                        },
                               'HaproxyStatsUser' => {
                                          type => 'Str',                                        },
                               'JavaAppServer' => {
                                          type => 'Str',                                        },
                               'JavaAppServerVersion' => {
                                          type => 'Str',                                        },
                               'Jvm' => {
                                          type => 'Str',                                        },
                               'JvmOptions' => {
                                          type => 'Str',                                        },
                               'JvmVersion' => {
                                          type => 'Str',                                        },
                               'ManageBundler' => {
                                          type => 'Str',                                        },
                               'MemcachedMemory' => {
                                          type => 'Str',                                        },
                               'MysqlRootPassword' => {
                                          type => 'Str',                                        },
                               'MysqlRootPasswordUbiquitous' => {
                                          type => 'Str',                                        },
                               'NodejsVersion' => {
                                          type => 'Str',                                        },
                               'PassengerVersion' => {
                                          type => 'Str',                                        },
                               'RailsStack' => {
                                          type => 'Str',                                        },
                               'RubygemsVersion' => {
                                          type => 'Str',                                        },
                               'RubyVersion' => {
                                          type => 'Str',                                        },
                             },
                  };
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::LayerAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::LayerAttributes object:

  $service_obj->Method(Att1 => { BundlerVersion => $value, ..., RubyVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::LayerAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->BundlerVersion

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 BundlerVersion => 


=head2 EcsClusterArn => 


=head2 EnableHaproxyStats => 


=head2 GangliaPassword => 


=head2 GangliaUrl => 


=head2 GangliaUser => 


=head2 HaproxyHealthCheckMethod => 


=head2 HaproxyHealthCheckUrl => 


=head2 HaproxyStatsPassword => 


=head2 HaproxyStatsUrl => 


=head2 HaproxyStatsUser => 


=head2 JavaAppServer => 


=head2 JavaAppServerVersion => 


=head2 Jvm => 


=head2 JvmOptions => 


=head2 JvmVersion => 


=head2 ManageBundler => 


=head2 MemcachedMemory => 


=head2 MysqlRootPassword => 


=head2 MysqlRootPasswordUbiquitous => 


=head2 NodejsVersion => 


=head2 PassengerVersion => 


=head2 RailsStack => 


=head2 RubygemsVersion => 


=head2 RubyVersion => 



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

