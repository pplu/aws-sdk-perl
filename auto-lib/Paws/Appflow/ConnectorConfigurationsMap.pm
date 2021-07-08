package Paws::Appflow::ConnectorConfigurationsMap;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has Amplitude => (is => 'ro', isa => 'Paws::Appflow::ConnectorConfiguration');
  has CustomerProfiles => (is => 'ro', isa => 'Paws::Appflow::ConnectorConfiguration');
  has Datadog => (is => 'ro', isa => 'Paws::Appflow::ConnectorConfiguration');
  has Dynatrace => (is => 'ro', isa => 'Paws::Appflow::ConnectorConfiguration');
  has EventBridge => (is => 'ro', isa => 'Paws::Appflow::ConnectorConfiguration');
  has Googleanalytics => (is => 'ro', isa => 'Paws::Appflow::ConnectorConfiguration');
  has Honeycode => (is => 'ro', isa => 'Paws::Appflow::ConnectorConfiguration');
  has Infornexus => (is => 'ro', isa => 'Paws::Appflow::ConnectorConfiguration');
  has LookoutMetrics => (is => 'ro', isa => 'Paws::Appflow::ConnectorConfiguration');
  has Marketo => (is => 'ro', isa => 'Paws::Appflow::ConnectorConfiguration');
  has Redshift => (is => 'ro', isa => 'Paws::Appflow::ConnectorConfiguration');
  has S3 => (is => 'ro', isa => 'Paws::Appflow::ConnectorConfiguration');
  has Salesforce => (is => 'ro', isa => 'Paws::Appflow::ConnectorConfiguration');
  has Servicenow => (is => 'ro', isa => 'Paws::Appflow::ConnectorConfiguration');
  has Singular => (is => 'ro', isa => 'Paws::Appflow::ConnectorConfiguration');
  has Slack => (is => 'ro', isa => 'Paws::Appflow::ConnectorConfiguration');
  has Snowflake => (is => 'ro', isa => 'Paws::Appflow::ConnectorConfiguration');
  has Trendmicro => (is => 'ro', isa => 'Paws::Appflow::ConnectorConfiguration');
  has Upsolver => (is => 'ro', isa => 'Paws::Appflow::ConnectorConfiguration');
  has Veeva => (is => 'ro', isa => 'Paws::Appflow::ConnectorConfiguration');
  has Zendesk => (is => 'ro', isa => 'Paws::Appflow::ConnectorConfiguration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::ConnectorConfigurationsMap

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Appflow::ConnectorConfigurationsMap object:

  $service_obj->Method(Att1 => { Amplitude => $value, ..., Zendesk => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Appflow::ConnectorConfigurationsMap object:

  $result = $service_obj->Method(...);
  $result->Att1->Amplitude

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Amplitude => L<Paws::Appflow::ConnectorConfiguration>


=head2 CustomerProfiles => L<Paws::Appflow::ConnectorConfiguration>


=head2 Datadog => L<Paws::Appflow::ConnectorConfiguration>


=head2 Dynatrace => L<Paws::Appflow::ConnectorConfiguration>


=head2 EventBridge => L<Paws::Appflow::ConnectorConfiguration>


=head2 Googleanalytics => L<Paws::Appflow::ConnectorConfiguration>


=head2 Honeycode => L<Paws::Appflow::ConnectorConfiguration>


=head2 Infornexus => L<Paws::Appflow::ConnectorConfiguration>


=head2 LookoutMetrics => L<Paws::Appflow::ConnectorConfiguration>


=head2 Marketo => L<Paws::Appflow::ConnectorConfiguration>


=head2 Redshift => L<Paws::Appflow::ConnectorConfiguration>


=head2 S3 => L<Paws::Appflow::ConnectorConfiguration>


=head2 Salesforce => L<Paws::Appflow::ConnectorConfiguration>


=head2 Servicenow => L<Paws::Appflow::ConnectorConfiguration>


=head2 Singular => L<Paws::Appflow::ConnectorConfiguration>


=head2 Slack => L<Paws::Appflow::ConnectorConfiguration>


=head2 Snowflake => L<Paws::Appflow::ConnectorConfiguration>


=head2 Trendmicro => L<Paws::Appflow::ConnectorConfiguration>


=head2 Upsolver => L<Paws::Appflow::ConnectorConfiguration>


=head2 Veeva => L<Paws::Appflow::ConnectorConfiguration>


=head2 Zendesk => L<Paws::Appflow::ConnectorConfiguration>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Appflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

