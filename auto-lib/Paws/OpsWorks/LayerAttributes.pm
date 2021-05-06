package Paws::OpsWorks::LayerAttributes;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has BundlerVersion => (is => 'ro', isa => 'Str');
  has EcsClusterArn => (is => 'ro', isa => 'Str');
  has EnableHaproxyStats => (is => 'ro', isa => 'Str');
  has GangliaPassword => (is => 'ro', isa => 'Str');
  has GangliaUrl => (is => 'ro', isa => 'Str');
  has GangliaUser => (is => 'ro', isa => 'Str');
  has HaproxyHealthCheckMethod => (is => 'ro', isa => 'Str');
  has HaproxyHealthCheckUrl => (is => 'ro', isa => 'Str');
  has HaproxyStatsPassword => (is => 'ro', isa => 'Str');
  has HaproxyStatsUrl => (is => 'ro', isa => 'Str');
  has HaproxyStatsUser => (is => 'ro', isa => 'Str');
  has JavaAppServer => (is => 'ro', isa => 'Str');
  has JavaAppServerVersion => (is => 'ro', isa => 'Str');
  has Jvm => (is => 'ro', isa => 'Str');
  has JvmOptions => (is => 'ro', isa => 'Str');
  has JvmVersion => (is => 'ro', isa => 'Str');
  has ManageBundler => (is => 'ro', isa => 'Str');
  has MemcachedMemory => (is => 'ro', isa => 'Str');
  has MysqlRootPassword => (is => 'ro', isa => 'Str');
  has MysqlRootPasswordUbiquitous => (is => 'ro', isa => 'Str');
  has NodejsVersion => (is => 'ro', isa => 'Str');
  has PassengerVersion => (is => 'ro', isa => 'Str');
  has RailsStack => (is => 'ro', isa => 'Str');
  has RubygemsVersion => (is => 'ro', isa => 'Str');
  has RubyVersion => (is => 'ro', isa => 'Str');
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


=head2 BundlerVersion => Str


=head2 EcsClusterArn => Str


=head2 EnableHaproxyStats => Str


=head2 GangliaPassword => Str


=head2 GangliaUrl => Str


=head2 GangliaUser => Str


=head2 HaproxyHealthCheckMethod => Str


=head2 HaproxyHealthCheckUrl => Str


=head2 HaproxyStatsPassword => Str


=head2 HaproxyStatsUrl => Str


=head2 HaproxyStatsUser => Str


=head2 JavaAppServer => Str


=head2 JavaAppServerVersion => Str


=head2 Jvm => Str


=head2 JvmOptions => Str


=head2 JvmVersion => Str


=head2 ManageBundler => Str


=head2 MemcachedMemory => Str


=head2 MysqlRootPassword => Str


=head2 MysqlRootPasswordUbiquitous => Str


=head2 NodejsVersion => Str


=head2 PassengerVersion => Str


=head2 RailsStack => Str


=head2 RubygemsVersion => Str


=head2 RubyVersion => Str



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

