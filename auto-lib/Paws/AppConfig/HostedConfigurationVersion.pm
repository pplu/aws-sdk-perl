
package Paws::AppConfig::HostedConfigurationVersion;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Application-Id');
  has ConfigurationProfileId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Configuration-Profile-Id');
  has Content => (is => 'ro', isa => 'Str');
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  has Description => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Description');
  has VersionNumber => (is => 'ro', isa => 'Int', traits => ['ParamInHeader'], header_name => 'Version-Number');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Content');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::HostedConfigurationVersion

=head1 ATTRIBUTES


=head2 ApplicationId => Str

The application ID.


=head2 ConfigurationProfileId => Str

The configuration profile ID.


=head2 Content => Str

The content of the configuration or the configuration data.


=head2 ContentType => Str

A standard MIME type describing the format of the configuration
content. For more information, see Content-Type
(https://docs.aws.amazon.com/https:/www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17).


=head2 Description => Str

A description of the configuration.


=head2 VersionNumber => Int

The configuration version.


=head2 _request_id => Str


=cut

